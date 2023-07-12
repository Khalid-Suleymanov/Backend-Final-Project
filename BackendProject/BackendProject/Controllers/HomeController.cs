﻿using BackendProject.DAL;
using BackendProject.Models;
using BackendProject.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;

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
                Sliders = _context.Sliders.OrderBy(x => x.Order).ToList(),
                Features = _context.Features.Take(3).ToList(),
                FourBrands = _context.FourBrands.Take(5).ToList(),
                Products = _context.Products
                .Include(x => x.Brand)
                .Include(x => x.Category)
                .Include(x => x.Color)
                .Include(x => x.ProductSizes)
                .ThenInclude(p => p.Size)
                .Include(x => x.Images.Where(x => x.ImageStatus == true)).Take(5).ToList(),

                NewProducts = _context.Products
                .Include(x => x.Brand)
                .Include(x => x.Category)
                .Include(x => x.Color)
                .Include(x => x.ProductSizes)
                .ThenInclude(p => p.Size)
                .Include(x => x.Images.Where(x => x.ImageStatus == true)).Take(6).ToList(),
            };
            return View(homeVM);
        }
        public IActionResult GetDetail(int id)
        {
            Product product = _context.Products.Include(x => x.Images).FirstOrDefault(x => x.Id == id);
            return PartialView("_ProductModalPartial", product);
        }
        public IActionResult AddToBasket(int id)
        {
            var basketStr = Request.Cookies["basket"];
            List<BasketCookieItemViewModel> cookieItems = null;
            if (basketStr == null)
            {
                cookieItems = new List<BasketCookieItemViewModel>();
            }
            else
            {
                cookieItems = JsonConvert.DeserializeObject<List<BasketCookieItemViewModel>>(basketStr);
            }
            BasketCookieItemViewModel cookieItem = cookieItems.FirstOrDefault(x => x.ProductId == id);
            if (cookieItem == null)
            {
                cookieItem = new BasketCookieItemViewModel
                {
                    ProductId = id,
                    Count = 1
                };
                cookieItems.Add(cookieItem);
            }
            else
            {
                cookieItem.Count++;
            }
            HttpContext.Response.Cookies.Append("basket", JsonConvert.SerializeObject(cookieItems));
            BasketViewModel basketVM = new BasketViewModel();
            foreach (var ci in cookieItems)
            {
                BasketItemVM item = new BasketItemVM
                {
                    Count = ci.Count,
                    Product = _context.Products.Include(x => x.Images.Where(x => x.ImageStatus == true)).FirstOrDefault(x => x.Id == ci.ProductId)
                };
                basketVM.basketItems.Add(item);
                basketVM.TotalAmount += (item.Product.DiscountedPrice > 0 ? item.Product.DiscountedPrice : item.Product.SalePrice) * item.Count;
            }
            return PartialView("_BasketPartial", basketVM);
        }
                                

        public IActionResult ShowBasket()
        {
            var datastr = HttpContext.Request.Cookies["basket"];
            var data = JsonConvert.DeserializeObject<List<BasketCookieItemViewModel>>(datastr);
            return Json(data);
        }
    }
}
