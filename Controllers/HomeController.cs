﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Alghorithms.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Code()
        {
            return View();
        }

        //[Authorize(Roles = "True")]
        public IActionResult InDevelopment()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }
    }
}
