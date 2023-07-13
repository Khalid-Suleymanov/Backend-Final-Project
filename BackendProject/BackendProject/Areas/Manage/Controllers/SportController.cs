using Microsoft.AspNetCore.Mvc;

namespace BackendProject.Areas.Manage.Controllers
{
    public class SportController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
