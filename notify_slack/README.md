<!-- ! This file is auto-generated. Please run ./utils/generate_docs.sh notify_slack to regenerate it. -->
# Send notification to Slack

Send notification to Slack

## Setup

- The `Dynamo Notification` app must be added to the slack channel beforehand.

## Usage

```yaml
name: Send notification to Slack
uses: DynamoDS/actions/notify_slack@master
with:
  # Add inputs here
```

## Inputs

Name | Description | Default | Required
-----|-------------|---------|---------
channel_id | Slack Channel id or name | C0P46V3A8 | false
slack_bot_token | Slack Bot Token |  | true
include_commit_info | Include commit information in slack notification | false | false
include_custom_message | Include custom message in slack notification | false | false
custom_status | Custom status to use in slack notification |  | false
custom_message | Custom message to include in slack notification |  | false
