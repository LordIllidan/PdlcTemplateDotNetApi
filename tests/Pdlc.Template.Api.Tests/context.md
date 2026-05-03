# Context: API Tests

## Purpose

Behavior tests for the .NET API.

## Boundaries

- Owns endpoint and contract tests.

## Important Files

- `HealthEndpointTests.cs`: verifies health endpoint.

## Local Commands

- `dotnet test tests/Pdlc.Template.Api.Tests/Pdlc.Template.Api.Tests.csproj`

## Decisions

- Use WebApplicationFactory for endpoint tests.

## Child Contexts
