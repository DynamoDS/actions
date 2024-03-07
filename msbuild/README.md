# MSBuild

[![MSBuild (Action)](https://github.com/DynamoDS/actions/actions/workflows/msbuild_action.yml/badge.svg)](https://github.com/DynamoDS/actions/actions/workflows/msbuild_action.yml)

Build .NET solution with MSBuild

## Usage

```yaml
- name: MSBuild
  uses: DynamoDS/actions/msbuild@master
  with:
    repository: DynamoDS/Dynamo
    dotnet_version: 8.0.x
    solution_path: src\Dynamo.All.sln
    build_configuration: Release
    runtime_identifier: win-x64
```
