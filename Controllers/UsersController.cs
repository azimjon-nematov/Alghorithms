using Alghorithms.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using Microsoft.AspNetCore.Authentication;

namespace Alghorithms.Controllers
{
    public class UsersController : Controller
    {
        IUserRepository repo;

        public UsersController(IUserRepository r)
        {
            repo = r;
        }

        [Authorize]
        public IActionResult Profile()
        {
            ClaimsPrincipal currentUser = this.User;
            var userID = int.Parse(currentUser?.FindFirst(ClaimTypes.NameIdentifier)?.Value ?? "");
            var user = repo.Get(userID);
            if (user == null)
                return NotFound();

            return View(user!);
        }

        public IActionResult SignOutt()
        {
            HttpContext.SignOutAsync();
            return Redirect("/");
        }
    }
}
