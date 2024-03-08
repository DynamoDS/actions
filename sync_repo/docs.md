<!-- ! This file is auto-generated. Please run ./utils/genereate_docs.sh sync_repo to regenare it. -->
# Sync Repository

Sync Repository

## Setup

- The downstream repository must be created beforehand.
- The runner must be configured to have push access to the downstream repository.

More info on runner setup and repository configuration is on [Wiki](https://wiki.autodesk.com/display/GEN/Dynamo+Reusable+Workflows+and+Composite+Actions)

## Usage

```yaml
name: Sync Repository
uses: DynamoDS/actions/sync_repo@master
with:
  # Add inputs here
```

## Inputs

Name | Description | Default | Required
-----|-------------|---------|---------
upstream_repository | Upstream Repository |  | true
downstream_repository_url | Downstream Repository |  | true
github_event | Github Event |  | true
shell | Shell | bash | false

## Outputs

Name | Description
------|-----------

