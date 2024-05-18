using Alghorithms.Models;
using Microsoft.AspNetCore.Authentication.Cookies;

var builder = WebApplication.CreateBuilder(args);

string connectionString = builder.Configuration["ConnectionString"];
//builder.Services.AddTransient<IRepository, Repository>(provider => new Repository(connectionString));
builder.Services.AddTransient<ITopicRepository, TopicRepository>(
    provider => new TopicRepository(connectionString));
builder.Services.AddTransient<IContentRepository, ContentRepository>(
    provider => new ContentRepository(connectionString));
builder.Services.AddTransient<IUserRepository, UserRepository>(
    provider => new UserRepository(connectionString));

builder.Services.AddControllersWithViews(); // ��������� ������� MVC

// аутентификация с помощью куки
builder.Services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
    .AddCookie(options => options.LoginPath = "/login");
builder.Services.AddAuthorization();



var app = builder.Build();
app.UseStaticFiles();
app.UseAuthentication();   // добавление middleware аутентификации 
app.UseAuthorization();   // добавление middleware авторизации 

// ������������� ������������� ��������� � �������������
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
