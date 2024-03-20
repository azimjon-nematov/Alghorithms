var builder = WebApplication.CreateBuilder(args);

string connectionString = builder.Configuration["ConnectionString"];
//builder.Services.AddTransient<IRepository, Repository>(provider => new Repository(connectionString));

builder.Services.AddControllersWithViews(); // добавляем сервисы MVC



var app = builder.Build();
app.UseStaticFiles();

// устанавливаем сопоставление маршрутов с контроллерами
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
