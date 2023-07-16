using BackendProject.Areas.Manage.ViewModels;
using BackendProject.DAL;
using BackendProject.Helpers;
using BackendProject.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BackendProject.Areas.Manage.Controllers
{
    [Authorize(Roles = "Admin, SuperAdmin, Member")]

    [Area("manage")]
    public class SportController : Controller
    {
        private readonly ProjectDbContext _context;
        private readonly IWebHostEnvironment _env;
        public SportController(ProjectDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _env = env;
        }
        public IActionResult Index(int page = 1)
        {
            var query = _context.SportOffs.AsQueryable();
            return View(PaginatedList<SportOff>.Create(query, page, 2));
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(SportOff sportOff)
        {
            if (!ModelState.IsValid) return View();
            if (sportOff.ImageFile == null)
            {
                ModelState.AddModelError("ImageFile", "ImageFile is required");
                return View();
            }
            if (sportOff.ImageFile.ContentType != "image/jpeg" && sportOff.ImageFile.ContentType != "image/png" && sportOff.ImageFile.ContentType != "image/jpg")
            {
                ModelState.AddModelError("ImageFile", "ImageFile must be .jpg,.jpeg or .png");
                return View();
            }
            sportOff.Image = UpFileManage.Save(sportOff.ImageFile, _env.WebRootPath, "Manage/Uploads/Products");
            _context.SportOffs.Add(sportOff);
            _context.SaveChanges();
            return RedirectToAction("index");
        }
        public IActionResult Edit(int id)
        {
            SportOff sportOff = _context.SportOffs.FirstOrDefault(x => x.Id == id);
            if (sportOff == null) return View("error");
            return View(sportOff);
        }
        [HttpPost]
        public IActionResult Edit(SportOff sportOff)
        {
            if (!ModelState.IsValid) { return View(sportOff); }
            SportOff existSport = _context.SportOffs.Find(sportOff.Id);
            if (existSport == null) return View("Error");
            string removableImageName = null;
            if (sportOff.ImageFile != null)
            {
                if (sportOff.ImageFile.ContentType != "image/jpeg" && sportOff.ImageFile.ContentType != "image/png" && sportOff.ImageFile.ContentType != "image/jng")
                {
                    ModelState.AddModelError("ImageFile", "ImageFile must be .jpg,.jpeg or .png");
                    return View(sportOff);
                }
                removableImageName = existSport.Image;
                existSport.Image = UpFileManage.Save(sportOff.ImageFile, _env.WebRootPath, "Manage/Uploads/Products");
            }
            existSport.Title = sportOff.Title;
            existSport.Desc1 = sportOff.Desc1;
            existSport.Desc2 = sportOff.Desc2;
            existSport.Order = sportOff.Order;
            _context.SaveChanges();
            if (removableImageName != null) UpFileManage.Delete(_env.WebRootPath, "Manage/Uploads/Products", removableImageName);
            return RedirectToAction("index");
        }
        public IActionResult Delete(int id)
        {
            var existSport = _context.SportOffs.Find(id);
            if (existSport == null)
            {
                return View("Error");
            }
            var removableImage = existSport.Image;
            _context.SportOffs.Remove(existSport);
            _context.SaveChanges();

            UpFileManage.Delete(_env.WebRootPath, "Manage/Uploads/Products", removableImage);
            return RedirectToAction("index");
        }
    }
}
