using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
    public class TopicsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
