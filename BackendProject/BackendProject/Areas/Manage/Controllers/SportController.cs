using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BackendProject.Areas.Manage.Controllers
{
    [Authorize]
    [Area("manage")]
    public class SportController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
