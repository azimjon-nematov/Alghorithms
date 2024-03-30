using Microsoft.Data.SqlClient;
using System.Data;
using Dapper;

namespace Alghorithms.Models
{
    
    public interface ITopicRepository
    {
        List<Topic> GetAll();
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
                return topics;
            }

        }
    }
}
