# Context: Scripts

## Purpose

Static validation scripts used by CI and agent quality gates.

## Boundaries

- Owns deterministic validation of PowerShell syntax, `context.md`, and change documentation.
- Does not own API runtime behavior.

## Important Files

- `ci/Test-PowerShellSyntax.ps1`: validates PowerShell parser output.
- `ci/Test-ContextDocs.ps1`: validates context documentation hierarchy.
- `ci/Test-ChangeDocs.ps1`: validates change documentation structure.

## Local Commands

- `pwsh scripts/ci/Test-PowerShellSyntax.ps1`
- `pwsh scripts/ci/Test-ContextDocs.ps1`
- `pwsh scripts/ci/Test-ChangeDocs.ps1`

## Decisions

- Quality gates must be deterministic and runnable without external SaaS.
- External tools such as Sonar are optional CI steps controlled by repository variables.

## Child Contexts

