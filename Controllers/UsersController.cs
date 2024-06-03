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

        [Authorize(Roles = "True")]
        public IActionResult EditUser(int userId)
        {
            var user = repo.Get(userId);
            if (user == null)
                return NotFound();

            return View(user!);
        }

        [Authorize(Roles = "True")]
        [HttpPost]
        public IActionResult EditUser(User user)
        {
            if (user == null)
                return NotFound();

            var u = repo.Update(user);
            if (u == null)
            {
                return Redirect(Url.Action("EditUser", "Users", new { userId = user.Id})!);
            }

            return Redirect(Url.Action("AllUsers", "Users")!);
        }

        [Authorize]
        public IActionResult SignOutt()
        {
            HttpContext.SignOutAsync();
            return Redirect("/");
        }

        [Authorize(Roles = "True")]
        [HttpGet("Users/Delete/{userId}")]
        public IActionResult Delete([FromRoute] int userId)
        {
            if (repo.Delete(userId))
            {
                string referer = Request.Headers["Referer"].ToString();
                return Redirect(referer);
            }
            return BadRequest();
        }

        public IActionResult AllUsers()
        {
            return View(repo.GetUsers());
        }


    }
}
