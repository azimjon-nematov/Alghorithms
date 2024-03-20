var builder = WebApplication.CreateBuilder(args);

string connectionString = builder.Configuration["ConnectionString"];
//builder.Services.AddTransient<IRepository, Repository>(provider => new Repository(connectionString));

builder.Services.AddControllersWithViews(); // ��������� ������� MVC



var app = builder.Build();
app.UseStaticFiles();

// ������������� ������������� ��������� � �������������
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
