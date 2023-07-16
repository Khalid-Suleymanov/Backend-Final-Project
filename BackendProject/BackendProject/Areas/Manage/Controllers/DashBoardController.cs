using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BackendProject.Areas.Manage.Controllers
{
    [Authorize(Roles = "Admin, SuperAdmin, Member")]
    [Area("manage")]
    public class DashBoardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
