using Microsoft.AspNetCore.Mvc;
using Alghorithms.Models;
using Microsoft.AspNetCore.Authorization;

namespace Alghorithms.Controllers
{
    [Authorize(Roles = "True")]
    public class AdminPanelController : Controller
    {

        ITopicRepository repo;
        public AdminPanelController(ITopicRepository r)
        {
            repo = r;
        }

        public IActionResult Index()
        {
            return View(repo.GetParents());
        }

        public IActionResult GetChildren(int topicId)
        {
            return View(repo.GetChildren(topicId));
        }


    }
}
