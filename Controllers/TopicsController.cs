using Alghorithms.Models;
using Microsoft.AspNetCore.Authorization;
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
            ViewData["Title"] = "Натиҷаҳои дархост '" + Name + "'";
            return View("Index", repo.Search(Name));
        }

        public IActionResult Detail([FromRoute] int Id)
        {
            var contents = repo.GetTopicContent(Id);
            return View(contents);
        }

        public IActionResult GetChildren([FromRoute] int Id)
        {
            var contents = repo.GetChildren(Id);
            return View(contents);
        }

        public IActionResult EditTopic([FromRoute] int Id)
        {
            var topic = repo.Get(Id);
            if (topic != null)
                return View(repo.Get(Id));
            return NotFound();
        }

        [Authorize(Roles = "True")]
        [HttpPost]
        public IActionResult EditTopic(Topic topic)
        {
            if (topic == null)
                return NotFound();
            
            var t = repo.Edit(topic);
            if (t == null)
            {
                return Redirect(Url.Action("EditTopic", "Topics", new { Id = topic.Id })!);
            }
            if (!topic.HasChildren && topic.ParentId != null)
                return Redirect(Url.Action("GetChildren", "Topics", new { Id = topic.ParentId! })!);

            return Redirect(Url.Action("Index", "AdminPanel")!);
        }
    }
}
