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
        bool Delte(int contentId);

    }
    public class ContentRepository : IContentRepository // TODO: DELETE OR FIX
    {
        string connectionString;
        public ContentRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool Delte(int contentId)
        {
            throw new NotImplementedException();
        }

        public Content? Edit(Content content)
        {
            throw new NotImplementedException();
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
    }
}
