# Context: .NET API Template

## Purpose

Base .NET API template for PDLC-managed services.

## Boundaries

- Owns API application, domain code, unit tests and architecture tests.
- Does not own frontend, database migrations or GitOps deployment.

## Important Files

- `src/Pdlc.Template.Api`: API project.
- `tests/Pdlc.Template.Api.Tests`: behavior tests.
- `tests/Pdlc.Template.Architecture.Tests`: architecture tests.

## Local Commands

- `dotnet build --configuration Release`
- `dotnet test --configuration Release`

## Decisions

- Keep API endpoints explicit and testable.
- Architecture tests protect project layering and dependency direction.

## Child Contexts

- `src/context.md`
- `tests/context.md`
