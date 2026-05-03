# Context: Documentation

## Purpose

Documentation for the .NET API template, including feature notes and change records.

## Boundaries

- Owns human-readable documentation and change documentation.
- Does not own .NET runtime code.

## Important Files

- `dotnet-template.md`: template feature description.
- `changes/README.md`: change documentation rules.

## Local Commands

- `pwsh scripts/ci/Test-ChangeDocs.ps1`

## Decisions

- Change documentation is validated in CI.
- Agents must document verification and context updates for meaningful changes.

## Child Contexts

