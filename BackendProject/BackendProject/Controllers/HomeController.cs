using BackendProject.DAL;
using BackendProject.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BackendProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ProjectDbContext _context;

        public HomeController(ProjectDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            HomeVM homeVM = new HomeVM
            {
                Sliders = _context.Sliders.OrderBy(x=>x.Order).ToList(),
                Features = _context.Features.Take(3).ToList(),
                Products = _context.Products
                .Include(x=>x.Brand)
                .Include(x=>x.Category)
                .Include(x=>x.Color)
                .Include(x=>x.ProductSizes)
                .ThenInclude(p=>p.Size)
                .Include(x => x.Images.Where(x=>x.ImageStatus == true)).Take(5).ToList(),

                NewProducts = _context.Products
                .Include(x => x.Brand)
                .Include(x => x.Category)
                .Include(x => x.Color)
                .Include(x => x.ProductSizes)
                .ThenInclude(p => p.Size)
                .Include(x => x.Images.Where(x => x.ImageStatus == true)).Where(x=>x.IsNew == true).Take(5).ToList(),
            };
            
            return View(homeVM);
        }

    }
}
