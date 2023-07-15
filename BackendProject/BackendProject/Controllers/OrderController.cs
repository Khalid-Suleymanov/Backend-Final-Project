using BackendProject.DAL;
using BackendProject.Models;
using BackendProject.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Security.Claims;

namespace BackendProject.Controllers
{
    public class OrderController : Controller
    {
        private readonly ProjectDbContext _context;
        private readonly UserManager<AppUser> _userManager;

        public OrderController(ProjectDbContext context, UserManager<AppUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }


        public IActionResult Checkout()
        {
            CheckOutViewModel vm = new CheckOutViewModel();
            vm.Items = new List<CheckOutItemViewModel>();

            string userId = User.Identity.IsAuthenticated ? User.FindFirstValue(ClaimTypes.NameIdentifier) : null;

            if (userId != null)
            {

                var basketItems = _context.BasketItems.Include(x=>x.Product).Where(x=>x.AppUserId==userId).ToList();
                vm.Items = basketItems.Select(x => new CheckOutItemViewModel
                {
                    Count = x.Count,
                    Product = x.Product.Name,
                    Price = (x.Product.DiscountedPrice>0 ? x.Product.DiscountedPrice : x.Product.SalePrice)*x.Count
                }).ToList();

                vm.TotalAmount = vm.Items.Sum(x => x.Price);
            }
            else
            {
                string basketStr = Request.Cookies["basket"];
                if(basketStr != null)
                {
                    List<BasketCookieItemViewModel> basketItems = JsonConvert.DeserializeObject<List<BasketCookieItemViewModel>>(basketStr);


                    foreach (var item in basketItems)
                    {
                        var product = _context.Products.Find(item.ProductId);
                        var checkOutItem = new CheckOutItemViewModel
                        {
                            Count = item.Count,
                            Product = product.Name,
                            Price = (product.DiscountedPrice > 0 ? product.DiscountedPrice : product.SalePrice) * item.Count
                        };

                        vm.Items.Add(checkOutItem);
                        vm.TotalAmount += checkOutItem.Price;
                    }   
                
                }


            }

            return View(vm);
        } 
    }
}
