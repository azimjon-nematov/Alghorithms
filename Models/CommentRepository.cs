using System;
using Microsoft.Data.SqlClient;
using System.Data;
using Dapper;

namespace Alghorithms.Models
{
	public interface ICommentRepository
	{
        Comment? Create(int topicId, int userId, string text);
	}

    public class CommentRepository : ICommentRepository
    {

        string connectionString;
        public CommentRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public Comment? Create(int topicId, int userId, string text)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var date = DateTime.Now;
                var sqlQuery = "INSERT INTO Comments(UserId, TopicId, Text, Date) VALUES(@userId, @topicId, @text, @date); SELECT CAST(SCOPE_IDENTITY() as int)";
                var id = db.Query<int>(sqlQuery, new { userId, topicId, date, text }).FirstOrDefault();
                if (id != 0)
                {
                    sqlQuery = @"SELECT c.Id ,c.UserId ,u.Name [UserName] ,c.TopicId ,c.Text ,c.Date ,c.ParentId
                        FROM Comments c LEFT JOIN Users u ON c.UserId = u.Id
                        WHERE c.Id = @id";
                    return db.Query<Comment>(sqlQuery, new { id }).First();
                }
                return null;
            }
        }
    }
}

