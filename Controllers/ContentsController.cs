using Alghorithms.Models;
using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
    public class ContentsController : Controller
    {

        IContentRepository repo;
        public ContentsController(IContentRepository r)
        {
            repo = r;
        }

        public IActionResult GetTopicContents(int topicId)
        {
            return View(repo.GetTopicContent(topicId));
        }

    }
}
