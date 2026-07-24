var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => new { message = "Hello from .NET boilerplate!" });

app.MapGet("/health", () => new { status = "healthy", timestamp = DateTime.UtcNow.ToString("o") });

app.Run();
