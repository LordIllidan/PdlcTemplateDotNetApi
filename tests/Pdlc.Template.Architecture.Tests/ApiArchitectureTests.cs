using NetArchTest.Rules;
using Xunit;

namespace Pdlc.Template.Architecture.Tests;

public sealed class ApiArchitectureTests
{
    [Fact]
    public void Api_Should_Not_Depend_On_Test_Assemblies()
    {
        var result = Types.InAssembly(typeof(Program).Assembly)
            .ShouldNot()
            .HaveDependencyOnAny("xunit", "Microsoft.NET.Test.Sdk")
            .GetResult();

        Assert.True(result.IsSuccessful, string.Join(Environment.NewLine, result.FailingTypeNames ?? []));
    }
}
