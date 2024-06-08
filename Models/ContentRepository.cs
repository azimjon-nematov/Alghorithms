using Dapper;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Alghorithms.Models
{
    public interface IContentRepository
    {
        List<Content> GetTopicContent(int TopicId);
        Content? Get(int contentId);
        Content? Edit(Content content);
        bool Delete(int contentId);
        List<ContentType> GetTypes();
        List<ProgramingLanguage> GetLangs();

    }
    public class ContentRepository : IContentRepository // TODO: DELETE OR FIX
    {
        string connectionString;
        public ContentRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool Delete(int contentId)
        {
            throw new NotImplementedException();
        }

        public Content? Edit(Content content)
        {
            if (content == null)
                return null;
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sqlQuery = "UPDATE Content SET ContentTypeId = @ContentTypeId, Data = @Data, Order = @Order, CodeListId = @CodeListId WHERE Id = @Id";
                var res = db.Execute(sqlQuery, content);
                if (res == 1)
                    return content;
                return null;
            }
        }

        public Content? Get(int contentId)
        {
            throw new NotImplementedException();
        }

        public List<Content> GetTopicContent(int TopicId)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sql = "SELECT c.Id, ct.Id [ContentTypeId], ct.Name [ContentTypeName], c.TopicId, c.Data, c.Params, c.[Order], c.CodeListId FROM Content c LEFT JOIN ContentTypes ct ON c.ContentTypeId = ct.Id WHERE c.TopicId = @TopicId";
                var contentList = db.Query<Content>(sql, new { TopicId }).ToList();
                return contentList;
            }
        }

        public List<ContentType> GetTypes()
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sql = "SELECT * FROM ContentTypes";
                var contentList = db.Query<ContentType>(sql).ToList();
                return contentList;
            }
        }

        public List<ProgramingLanguage> GetLangs()
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sql = "SELECT * FROM ProgramingLanguages";
                var contentList = db.Query<ProgramingLanguage>(sql).ToList();
                return contentList;
            }
        }
    }
    public class ContentType
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
}
