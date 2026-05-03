# Context: Tests

## Purpose

Tests for .NET API behavior and architecture.

## Boundaries

- Owns test projects only.

## Important Files

- `Pdlc.Template.Api.Tests`: endpoint behavior tests.
- `Pdlc.Template.Architecture.Tests`: architecture rules.

## Local Commands

- `dotnet test`

## Decisions

- Architecture tests must run in regular CI, not only manually.

## Child Contexts

- `Pdlc.Template.Api.Tests/context.md`
- `Pdlc.Template.Architecture.Tests/context.md`
