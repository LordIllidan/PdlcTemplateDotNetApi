# Context: Source

## Purpose

Production source code for the .NET API template.

## Boundaries

- Owns runtime API behavior.
- Does not own tests.

## Important Files

- `Pdlc.Template.Api/Program.cs`: Minimal API entry point.

## Local Commands

- `dotnet build src/Pdlc.Template.Api/Pdlc.Template.Api.csproj`

## Decisions

- Keep endpoint contracts small and explicit.

## Child Contexts

- `Pdlc.Template.Api/context.md`
