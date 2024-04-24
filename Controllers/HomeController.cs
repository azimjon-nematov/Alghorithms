using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Code()
        {
            return View();
        }
    }
}
