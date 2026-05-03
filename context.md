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
- `scripts/ci`: static CI validation scripts.
- `docs/changes`: change documentation required by quality gates.

## Local Commands

- `dotnet build --configuration Release`
- `dotnet test --configuration Release`
- `pwsh scripts/ci/Test-PowerShellSyntax.ps1`
- `pwsh scripts/ci/Test-ContextDocs.ps1`
- `pwsh scripts/ci/Test-ChangeDocs.ps1`

## Decisions

- Keep API endpoints explicit and testable.
- Architecture tests protect project layering and dependency direction.

## Child Contexts

- `src/context.md`
- `tests/context.md`
- `docs/context.md`
- `scripts/context.md`
