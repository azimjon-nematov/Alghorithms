using System;
using Alghorithms.Models;
using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
	public class CommentsController : Controller
    {
        ICommentRepository repo;
		public CommentsController(ICommentRepository r)
		{
            repo = r;
		}

        public IActionResult Create(int topicId, int userId, string text)
        {
            var comment = repo.Create(topicId, userId, text);
            if (comment != null)
            {
                return View(comment!);
            }
            return BadRequest();
        }
    }
}

