using System.Data;
using Dapper;
using Microsoft.Data.SqlClient;

namespace Alghorithms.Models
{
    public interface IUserRepository
    {
        User? Get(int id);
        List<User> GetUsers();
        bool IsLoginFree(string login);
        User? Register(User user);
        //bool Create(User user);
        //bool Update(User user);
        //ResponseResult Delete(int id);
        User? LogIn(string login, string password);
    }

    public class UserRepository : IUserRepository
    {
        string connectionString;
        public UserRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public User? Get(int id)
        {
            throw new NotImplementedException();
        }

        public List<User> GetUsers()
        {
            throw new NotImplementedException();
        }

        public bool IsLoginFree(string login)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sqlQuery = "SELECT COUNT(*) from Users WHERE Login = @login";
                return db.Query<int>(sqlQuery, new { login }).FirstOrDefault() == 0;
            }

        }

        public User? LogIn(string login, string password)
        {
            using (IDbConnection db = new SqlConnection(connectionString))
            {
                string sqlQuery = "SELECT * FROM Users WHERE Login = @login AND PasswordHash = @password";
                User? user = db.Query<User>(sqlQuery, new { login, password }).ToList().First();
                if (user != null && user.Login == login && user.PasswordHash == password)
                    return user;
                return null;
            }
        }

        public User? Register(User user)
        {
            if (!IsLoginFree(user.Login))
                return null;

            using (IDbConnection db = new SqlConnection(connectionString))
            {
                var sqlQuery = "INSERT INTO Users(Name, Login, PasswordHash, IsAdmin) VALUES(@Name, @Login, @PasswordHash, 0); SELECT CAST(SCOPE_IDENTITY() as int)";
                var userId = db.Query<int>(sqlQuery, user).FirstOrDefault();
                if (userId != 0)
                {
                    user.Id = userId;
                    return user;
                }
                return null;
            }
        }
    }
}
