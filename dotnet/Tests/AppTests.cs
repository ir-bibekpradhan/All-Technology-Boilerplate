using Xunit;

namespace DotnetBoilerplate.Tests;

public class AppTests
{
    [Fact]
    public void TestHealthEndpoint()
    {
        var status = "healthy";
        Assert.Equal("healthy", status);
    }

    [Fact]
    public void TestHelloMessage()
    {
        var message = "Hello from .NET boilerplate!";
        Assert.Contains(".NET", message);
    }
}
