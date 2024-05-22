using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authentication;
using Alghorithms.Models;
using Microsoft.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Text;
using Microsoft.AspNetCore.Authentication.Cookies;
using System;

namespace Alghorithms.Controllers
{
    public class AuthController : Controller
    {
        IUserRepository repo;

        public AuthController(IUserRepository r)
        {
            repo = r;
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(string email, string password)
        {
            User? u = repo.LogIn(email, password);
            if (u == null)
            {
                return View();
            }

            var claims = new List<Claim> {
                new Claim(ClaimTypes.Name, u!.Name),
                new Claim(ClaimTypes.NameIdentifier, u!.Id.ToString()),
                new Claim(ClaimTypes.Role, u!.IsAdmin.ToString()),
            };
            // создаем объект ClaimsIdentity
            ClaimsIdentity claimsIdentity = new ClaimsIdentity(claims, "Cookies");
            // установка аутентификационных куки
            HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity),
            new AuthenticationProperties
            {
                IsPersistent = true,
                AllowRefresh = true,
                ExpiresUtc = DateTime.UtcNow.AddDays(30)
            });
            return Redirect("/");
        }

        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Register(string username, string email, string password, string repassword)
        {
            if (password != repassword)
            {
                return View();
            }

            User u = new User { Id = 0, Name = username, Login = email, PasswordHash = password };

            User? registredUser = repo.Register(u);
            if (registredUser == null)
                return View();

            var claims = new List<Claim> {
                new Claim(ClaimTypes.Name, registredUser!.Name),
                new Claim(ClaimTypes.NameIdentifier, registredUser!.Id.ToString()),
                new Claim(ClaimTypes.Role, registredUser!.IsAdmin.ToString()),
            };
            // создаем объект ClaimsIdentity
            ClaimsIdentity claimsIdentity = new ClaimsIdentity(claims, "Cookies");
            // установка аутентификационных куки
            HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));
            return Redirect("/");
        }
    }
}
