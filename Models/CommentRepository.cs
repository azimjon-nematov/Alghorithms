using System;
using Microsoft.Data.SqlClient;
using System.Data;
using Dapper;

namespace Alghorithms.Models
{
	interface ICommentRepository
	{
        Comment Create(int topicId, int userId, string text);
	}

    public class CommentRepository : ICommentRepository
    {

        string connectionString;
        public CommentRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public Comment Create(int topicId, int userId, string text)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var date = DateTime.Now;
                var sqlQuery = "INSERT INTO Comment(UserId TopicId, Text, Date, ParentId) VALUES(@userId, @topicId, @text, @date, NULL); SELECT CAST(SCOPE_IDENTITY() as int)";
                var id = db.Query<int>(sqlQuery, new { userId, topicId, date, text }).FirstOrDefault();
                if (id != 0)
                {

                }
                return null;
            }
        }
    }
}

