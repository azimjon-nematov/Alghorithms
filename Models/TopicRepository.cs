using Microsoft.Data.SqlClient;
using System.Data;
using Dapper;

namespace Alghorithms.Models
{
    
    public interface ITopicRepository
    {
        List<Topic> GetAll();
        List<Topic> GetParents();
        List<Topic> GetChildren(int topicId);
        Topic? Get(int id);
        Topic? Edit(Topic topic);
        bool Delete(int topicId);
        List<Topic> Search(string Name);
        (Topic, List<Content>, List<Comment>) GetTopicContent(int TopicId);
    }

    public class TopicRepository : ITopicRepository
    {
        string connectionString;
        public TopicRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<Topic> GetAll()
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var topics = db.Query<Topic>("SELECT * FROM Topics WHERE ParentId is NULL").ToList();
                foreach (var topic in topics)
                {
                    if(topic.HasChildren)
                    {
                        topic.children = db.Query<Topic>("SELECT * FROM Topics WHERE ParentId = @Id", new { topic.Id }).ToList();
                    }
                }
                
                return topics;
            }
        }

        public List<Topic> GetParents()
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var topics = db.Query<Topic>("SELECT * FROM Topics WHERE ParentId is NULL").ToList();
                return topics;
            }
        }

        public List<Topic> GetChildren(int topicId)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var topics = db.Query<Topic>("SELECT * FROM Topics WHERE ParentId = @topicId", new { topicId }).ToList();
                return topics;
            }
        }

        public Topic? Get(int id)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var topic = db.Query<Topic>("SELECT * FROM Topics WHERE Id = @id", new { id })
                    .ToList().First();

                //topic;

                return topic;
            }
        }

        public List<Topic> Search(string Name)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var topics = db.Query<Topic>(
                    "SELECT * FROM Topics WHERE Name LIKE @Name", 
                    new { Name = "%" + Name + "%" }
                ).ToList();

                foreach (var topic in topics)
                {
                    if (topic.HasChildren)
                    {
                        topic.children = db.Query<Topic>("SELECT * FROM Topics WHERE ParentId = @Id", new { topic.Id }).ToList();
                    }
                }
                return topics;
            }
        }

        public (Topic, List<Content>, List<Comment>) GetTopicContent(int TopicId)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sql = "SELECT c.Id, ct.Id [ContentTypeId], ct.Name [ContentTypeName], c.TopicId, c.Data, c.Params, c.[Order], c.CodeListId FROM Content c LEFT JOIN ContentTypes ct ON c.ContentTypeId = ct.Id WHERE c.TopicId = @TopicId";
                var contentList = db.Query<Content>(sql, new { TopicId }).ToList();
                sql = "SELECT c.Id, c.CodeListId, c.LanguageId, p.Title [LanguageName], c.Code FROM CodeInLang c LEFT JOIN ProgramingLanguages p ON c.LanguageId = p.Id WHERE c.CodeListId = @Id";
                foreach (var content in contentList)
                {
                    if (content.ContentTypeName == "Code")
                    {
                        content.codes = db.Query<CodeInLang>(sql, new { Id = content.CodeListId! }).ToList();
                    }
                }
                sql = @"SELECT c.Id ,c.UserId ,u.Name [UserName] ,c.TopicId ,c.Text ,c.Date ,c.ParentId
                        FROM Comments c LEFT JOIN Users u ON c.UserId = u.Id
                        WHERE c.TopicId = @TopicId ORDER BY c.Date DESC";
                var comments = db.Query<Comment>(sql, new { TopicId }).ToList();

                var topic = Get(TopicId);

                return (topic!, contentList, comments);
            }
        }

        public bool Delete(int topicId)
        {
            throw new NotImplementedException();
        }

        public Topic? Edit(Topic topic)
        {
            throw new NotImplementedException();
        }
    }
}
