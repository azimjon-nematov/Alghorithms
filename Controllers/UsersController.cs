using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
    public class UsersController : Controller
    {
        public IActionResult Profile()
        {
            return View();
        }
    }
}
