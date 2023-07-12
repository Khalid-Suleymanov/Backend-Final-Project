﻿using BackendProject.DAL;
using BackendProject.Models;
using BackendProject.ViewModels;
using Humanizer.Localisation;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Security.Claims;

namespace BackendProject.Services
{
    public class LayoutService
    {
        private readonly ProjectDbContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;
        public LayoutService(ProjectDbContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }
        public List<Product> GetProducts()
        {
            return _context.Products.ToList();
        }
        public BasketViewModel GetBasket()
        {
            var basketVM = new BasketViewModel();
            var basketStr = _httpContextAccessor.HttpContext.Request.Cookies["basket"];
            List<BasketCookieItemViewModel> cookieItems = null;
            if (basketStr == null)
            {
                cookieItems = new List<BasketCookieItemViewModel>();
            }
            else
            {
                cookieItems = JsonConvert.DeserializeObject<List<BasketCookieItemViewModel>>(basketStr);
            }
            foreach (var cookieItem in cookieItems)
            {
                BasketItemVM item = new BasketItemVM
                {
                    Count = cookieItem.Count,
                    Product = _context.Products.Include(x=>x.Images).FirstOrDefault(x => x.Id == cookieItem.ProductId)
                };
                basketVM.basketItems.Add(item);
                basketVM.TotalAmount += (item.Product.DiscountedPrice > 0 ? item.Product.DiscountedPrice : item.Product.SalePrice) * item.Count;
            }
            return basketVM;
        }
    }
}
