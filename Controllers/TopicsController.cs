using Alghorithms.Models;
using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
    public class TopicsController : Controller
    {
        ITopicRepository repo;
        public TopicsController(ITopicRepository r)
        {
            repo = r;
        }
        public IActionResult Index()
        {
            return View(repo.GetAll());
        }
    }
}
