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
            var types = repo.GetTypes();
            var contents = repo.GetTopicContent(topicId);
            //var langs = repo.GetLangs();
            return View((types, contents/*, langs*/));
        }

        [HttpPost]
        public IActionResult Edit(Content content)
        {
            var res = repo.Edit(content);
            if (res == null)
                return BadRequest();

            return Ok(res!);
        }

    }
}
