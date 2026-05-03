# Context: Pdlc.Template.Api

## Purpose

Minimal API service template.

## Boundaries

- Owns HTTP endpoints and API DTOs.
- Does not own database migrations or deployment manifests.

## Important Files

- `Program.cs`: endpoint mapping.
- `Pdlc.Template.Api.csproj`: project dependencies.

## Local Commands

- `dotnet run --project src/Pdlc.Template.Api/Pdlc.Template.Api.csproj`

## Decisions

- Health endpoint is required for deployment probes.

## Child Contexts
