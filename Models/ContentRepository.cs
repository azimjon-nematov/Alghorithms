using Dapper;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Alghorithms.Models
{
    public interface IContentRepository
    {
        List<Content> GetTopicContent(int TopicId);

    }
    public class ContentRepository : IContentRepository
    {
        string connectionString;
        public ContentRepository(string connectionString)
        {
            this.connectionString = connectionString;
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
    }
}
