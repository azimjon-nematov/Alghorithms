using Microsoft.AspNetCore.Mvc;
using Alghorithms.Models;
using Microsoft.AspNetCore.Authorization;

namespace Alghorithms.Controllers
{
    [Authorize(Roles = "True")]
    public class AdminPanelController : Controller
    {

        IUserRepository _userRepository;
        public AdminPanelController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult AllUsers()
        {
            return View(_userRepository.GetUsers());
        }

        public IActionResult EditUser()
        {
            return View();
        }

    }
}
