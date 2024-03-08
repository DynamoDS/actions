#!/usr/bin/env sh

# This script generates documentation for an action based on the action.yml file.
# It requires yq to be installed. https://mikefarah.gitbook.io/yq/
#
# Usage: ./utils/generate_docs.sh <action>
#
# Example: ./utils/generate_docs.sh greeting

if ! command -v yq &> /dev/null; then
  echo "❕yq is not installed.\nPlease install it first. https://mikefarah.gitbook.io/yq/"
  exit 1
fi

action="$1"
if [ -z "$action" ]; then
  echo "Usage: $0 <action>"
  exit 1
fi

if [ ! -d "$action" ]; then
  echo "❌ directory was not found: $action"
  exit 1
fi

input_file="$action/action.yml"
output_file="$action/docs.md"

if [ ! -f "$input_file" ]; then
  echo "❌ file not found: $input_file"
  exit 1
fi

echo "ℹ️  Generating documentation for action: $action"
echo "ℹ️  Parsing action file: $input_file"
name=$(yq '.description' $input_file)
description=$(yq '.description' $input_file)
inputs=$(yq '.inputs | to_entries | map([.key, .value.description, .value.default, .value.required] | join(" | ")) | join("\n")' $input_file)
outputs=$(yq '.outputs | to_entries | map([.key, .value.description] | join(" | ")) | join("\n")' $input_file)

cat > $output_file <<EOF
<!-- ! This file is auto-generated. Please run ./utils/genereate_docs.sh $action to regenare it. -->
# $name

$description

## Usage

\`\`\`yaml
name: $name
uses: DynamoDS/actions/$action@master
with:
  # Add inputs here
\`\`\`

## Inputs

Name | Description | Default | Required
-----|-------------|---------|---------
$inputs

## Outputs

Name | Description
------|-----------
$outputs
EOF

echo "✅ Documentation generated: $output_file"
