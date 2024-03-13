var builder = WebApplication.CreateBuilder(args);


builder.Services.AddControllersWithViews(); // ��������� ������� MVC



var app = builder.Build();
app.UseStaticFiles();

// ������������� ������������� ��������� � �������������
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
