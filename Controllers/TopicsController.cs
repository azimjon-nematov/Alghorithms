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

        [HttpGet("Topics/Search/{Name}")]
        public IActionResult Search([FromRoute] string Name)
        {
            ViewData["Title"] = "Результаты по запросу '" + Name + "'";
            return View("Index", repo.Search(Name));
        }

        public IActionResult Detail([FromRoute] int Id)
        {
            var contents = repo.GetTopicContent(Id);
            return View(contents);
        }
    }
}
