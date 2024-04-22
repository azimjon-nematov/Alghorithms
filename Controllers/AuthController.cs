using Microsoft.AspNetCore.Mvc;
using Alghorithms.Models;
using Microsoft.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Text;

namespace Alghorithms.Controllers
{
    public class AuthController : Controller
    {
        //IConfiguration _configuration;
        //string connectionString = "Data Source=WIN-EP9R9HMH2BM;Initial Catalog=Algorithms;Integrated Security=True;TrustServerCertificate=true";

        //public AuthController(IConfiguration configuration)
        //{
        //    _configuration = configuration;
        //}

        //public IActionResult Index()
        //{
        //    return View();
        //}


        //[HttpPost("register")]
        //public IActionResult Register(UserDto request)
        //{
        //    var hash1 = Encoding.UTF8.GetBytes(request.Password);
        //    using (SHA512 shaM = SHA512.Create())
        //    {
        //        hash1 = shaM.ComputeHash(hash1);
        //    }

        //    var hashedInputStringBuilder = new System.Text.StringBuilder(128);
        //    foreach (var b in hash1)
        //        hashedInputStringBuilder.Append(b.ToString("X2"));
        //    string passwordHash1 = hashedInputStringBuilder.ToString();
        //    return Redirect("");
        //}


        //private string CreateToken(User user)
        //{
        //    List<Claim> claims = new List<Claim>
        //    {
        //        new Claim(ClaimTypes.NameIdentifier, user.Id.ToString()),
        //        new Claim(ClaimTypes.Name, user.Name),
        //        new Claim(ClaimTypes.Role, user.IsAdmin.ToString())
        //    };

        //    var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_configuration.GetSection("AppSettings:Token").Value));

        //    var cred = new SigningCredentials(key, SecurityAlgorithms.HmacSha256Signature);

        //    var token = new JwtSecurityToken(
        //        claims: claims,
        //        expires: DateTime.Now.AddDays(1),
        //        signingCredentials: cred
        //    );

        //    var jwt = new JwtSecurityTokenHandler().WriteToken(token);

        //    return jwt;
        //}
    }
}
