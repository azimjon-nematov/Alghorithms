using Microsoft.Data.SqlClient;
using System.Data;
using Dapper;

namespace Alghorithms.Models
{
    
    public interface ITopicRepository
    {
        List<Topic> GetAll();
        TopicDetail? Get(int index);
        List<Topic> Search(string Name);
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

        public TopicDetail? Get(int id)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var topic = db.Query<TopicDetail>("SELECT * FROM Topics WHERE Id = @id", new { id })
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
                return topics;
            }
        }
    }
}
