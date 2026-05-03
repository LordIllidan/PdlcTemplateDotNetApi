# Context: Architecture Tests

## Purpose

Architecture rules for the .NET API template.

## Boundaries

- Owns dependency and naming constraints.

## Important Files

- `ApiArchitectureTests.cs`: NetArchTest rules.

## Local Commands

- `dotnet test tests/Pdlc.Template.Architecture.Tests/Pdlc.Template.Architecture.Tests.csproj`

## Decisions

- API project must not depend on test assemblies.

## Child Contexts
