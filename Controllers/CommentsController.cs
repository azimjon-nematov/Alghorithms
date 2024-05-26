using System;
using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
	public class CommentsController : Controller
    {
		public CommentsController()
		{
		}

        public IActionResult Index()
        {
            return View();
        }
    }
}

