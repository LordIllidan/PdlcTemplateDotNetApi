var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

app.MapGet("/health", () => Results.Ok(new HealthResponse("ok")))
    .WithName("Health");

app.MapGet("/api/risk/sample", () => Results.Ok(new RiskSampleResponse("sample", 42, "medium")))
    .WithName("RiskSample");

app.Run();

public sealed record HealthResponse(string Status);
public sealed record RiskSampleResponse(string Id, int Score, string Level);

public partial class Program;
