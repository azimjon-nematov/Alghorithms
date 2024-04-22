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
            Console.WriteLine(Name);
            return View("Index", repo.Search(Name));
        }

        public IActionResult Detail([FromRoute] int Id)
        {
            ViewData["Title"] = repo.Get(Id)?.Name ?? "";
            var contents = repo.GetTopicContent(Id);
            return View(contents);
        }
    }
}
