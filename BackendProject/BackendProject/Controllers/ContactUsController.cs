using BackendProject.DAL;
using BackendProject.Models;
using BackendProject.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace BackendProject.Controllers
{
    public class ContactUsController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly ProjectDbContext _context;
        public ContactUsController(ProjectDbContext context, UserManager<AppUser> userManager)
        {
            _userManager = userManager;
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            var user = User.Identity.IsAuthenticated ? await _userManager.FindByIdAsync(User.FindFirstValue(ClaimTypes.NameIdentifier)) : null;
            if (user != null)
            {
                ContactVM vm = new ContactVM
                {
                    FullName = user.FullName,
                    Email = user.Email,
                    Phone = user.PhoneNumber
                };
                return View(vm);

            }
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> SendMessage(ContactVM userContact)
        {
            if (!ModelState.IsValid)
            {
                var user = User.Identity.IsAuthenticated ? await _userManager.FindByIdAsync(User.FindFirstValue(ClaimTypes.NameIdentifier)) : null;
                if (user != null)
                {
                    ContactVM vm = new ContactVM
                    {
                        FullName = user.FullName,
                        Email = user.Email,
                        Phone = user.PhoneNumber
                    };
                    return View(vm);
                }
                return View();
            }
            var userId = User.Identity.IsAuthenticated ? User.FindFirstValue(ClaimTypes.NameIdentifier) : null;
            if(userId !=null)
            {
                UserContact model = new UserContact
                {
                    AppUserId = userId,
                    Email = userContact.Email,
                    Phone = userContact.Phone,
                    FullName = userContact.FullName,
                    Subject = userContact.Subject,
                    Text = userContact.Note
                };
                _context.UserContacts.Add(model);
            }
            else
            {
                UserContact model = new UserContact
                {
                    Email = userContact.Email,
                    Phone = userContact.Phone,
                    FullName = userContact.FullName,
                    Subject = userContact.Subject,
                    Text = userContact.Note
                };
                _context.UserContacts.Add(model);
            }
            _context.SaveChanges();
            TempData["Success"] = "Message send Successfull";
            return RedirectToAction("index", "contactus");
        }
    }
}
