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

        public IActionResult Search([FromRoute] string Name)
        {
            return View("Index", repo.Search(Name));
        }

        public IActionResult Detail([FromRoute] int Id)
        {
            var contents = repo.GetTopicContent(Id);
            return View(contents);
        }
    }
}
