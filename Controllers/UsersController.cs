using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
    public class UsersController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
