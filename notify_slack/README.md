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
channel_id | Slack Channel id or name | C06PPSAV6TW | false
slack_bot_token | Slack Bot Token |  | true
include_commit_info | Include commit information in slack notification | false | false
include_test_results | Include test results in slack notification | false | false
custom_status | Status to use in slack notification |  | false
test_results | Test results to include in slack notification |  | false

## Outputs

Name | Description
-----|-----------

