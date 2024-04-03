<!-- ! This file is auto-generated. Please run ./utils/generate_docs.sh msbuild to regenerate it. -->
# Build .NET solution with MSBuild

Build .NET solution with MSBuild

## Usage

```yaml
name: Build .NET solution with MSBuild
uses: DynamoDS/actions/msbuild@master
with:
  # Add inputs here
```

## Inputs

Name | Description | Default | Required
-----|-------------|---------|---------
repository | Repository |  | true
dotnet_version | Dotnet Version | 8.0.x | false
solution_path | Solution Path |  | true
build_configuration | Build Configuration | Release | false
runtime_identifier | Runtime Identifier |  | false

## Outputs

Name | Description
-----|-----------

