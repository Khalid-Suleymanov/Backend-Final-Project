using BackendProject.DAL;
using BackendProject.Services;
using Microsoft.EntityFrameworkCore;
var builder = WebApplication.CreateBuilder(args);
builder.Services.AddControllersWithViews();
builder.Services.AddDbContext<ProjectDbContext>(opt =>
opt.UseSqlServer(builder.Configuration.GetConnectionString("Default"))
    );

builder.Services.AddScoped<LayoutService>();
builder.Services.AddHttpContextAccessor();

var app = builder.Build();

app.MapControllerRoute(
            name: "areas",
            pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");

app.MapControllerRoute(
        name: "default",
        pattern: "{controller=home}/{action=index}/{id?}"); 

app.UseStaticFiles();
app.Run();
