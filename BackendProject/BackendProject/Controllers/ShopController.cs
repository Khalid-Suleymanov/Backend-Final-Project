using BackendProject.DAL;
using BackendProject.Models;
using BackendProject.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BackendProject.Controllers
{
    public class ShopController:Controller
    {
        private readonly ProjectDbContext _context;

        public ShopController(ProjectDbContext context)
        {
           _context = context;
        }
        public IActionResult Index()
        {
            HomeVM homeVM = new HomeVM
            {
                Categories = _context.Categories.Include(x=>x.Products).Take(5).ToList(),
                Colors = _context.Colors.Include(x=>x.Products).Take(5).ToList(),
                Sizes = _context.Sizes.Include(x=>x.ProductSizes).Take(4).ToList(),
                Products = _context.Products
                .Include(x => x.Brand)
                .Include(x => x.Category)
                .Include(x => x.Color)
                .Include(x => x.ProductSizes)
                .ThenInclude(p => p.Size)
                .Include(x => x.Images.Where(x => x.ImageStatus == true)).ToList(),
            };
            return View(homeVM);
        }
    }
}
