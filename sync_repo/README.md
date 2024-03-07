# Sync Repo

[![Sync Repo (Action)](https://github.com/DynamoDS/actions/actions/workflows/sync_repo_action.yml/badge.svg)](https://github.com/DynamoDS/actions/actions/workflows/sync_repo_action.yml)

Sync Repository with a mirror

## Usage

```yaml
- name: Sync Repo
  uses: DynamoDS/actions/sync_repo@master
  with:
    upstream_repository: ${{ github.repository }}
    downstream_repository_url: git@git.autodesk.com:Dynamo/actions.git
    github_event: ${{ github.event_name }}
```

## Requirements

- The downstream repository must be created beforehand.
- The runner must be configured to have push access to the downstream repository.

More info on runner setup and repository configurattion is on [Wiki](https://wiki.autodesk.com/display/GEN/Dynamo+Reusable+Workflows+and+Composite+Actions)
