# PDLC .NET API Template

Template repository for enterprise .NET APIs.

## Stack

- .NET 8 Minimal API
- xUnit tests
- NetArchTest architecture tests
- GitHub Actions CI

## Commands

```powershell
dotnet restore
dotnet build --configuration Release --no-restore
dotnet test --configuration Release --no-build
pwsh scripts/ci/Test-PowerShellSyntax.ps1
pwsh scripts/ci/Test-ContextDocs.ps1
pwsh scripts/ci/Test-ChangeDocs.ps1
```

## Optional CI Quality Gates

Repository variables control optional external gates:

- `ENABLE_SONAR=true`
- `ENABLE_DOTNET_FORMAT=true`
- `ENABLE_GITLEAKS=true`
- `ENABLE_CODEQL=true`

Sonar requires `SONAR_TOKEN` secret and `SONAR_HOST_URL`, `SONAR_PROJECT_KEY`, `SONAR_ORGANIZATION` variables.
