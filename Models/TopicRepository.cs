﻿using Microsoft.Data.SqlClient;
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
        Topic? Create(Topic topic);
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
                List<Content> contentList = new ContentRepository(connectionString).GetTopicContent(TopicId);

                var sql = @"SELECT c.Id ,c.UserId ,u.Name [UserName] ,c.TopicId ,c.Text ,c.Date ,c.ParentId
                        FROM Comments c LEFT JOIN Users u ON c.UserId = u.Id
                        WHERE c.TopicId = @TopicId ORDER BY c.Date DESC";
                var comments = db.Query<Comment>(sql, new { TopicId }).ToList();

                var topic = Get(TopicId);

                return (topic!, contentList, comments);
            }
        }

        public Topic? Create(Topic topic)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sqlQuery = "INSERT INTO Topics(Name, [Order], ParentId, HasChildren) VALUES(@Name, @Order, @ParentId, @HasChildren); SELECT CAST(SCOPE_IDENTITY() as int)";
                int? res = db.Query<int?>(sqlQuery, topic).First();
                if (res == null)
                    return null;
                topic.Id = res ?? -69;
                return topic;
            }
        }

        public Topic? Edit(Topic topic)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sqlQuery = "UPDATE Topics SET Name = @Name, [Order] = @Order, ParentId = @ParentId, HasChildren = @HasChildren WHERE Id = @Id";
                var res = db.Execute(sqlQuery, topic);
                if (res == 1)
                    return topic;
                return null;
            }
        }

        public bool Delete(int topicId)
        {
            throw new NotImplementedException();
        }
    }
}
