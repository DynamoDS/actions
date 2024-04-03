#!/usr/bin/env sh

# This script generates README.md.
# It requires yq to be installed. https://mikefarah.gitbook.io/yq/
#
# Usage: ./utils/generate_readme.sh

if ! command -v yq &> /dev/null; then
  echo "❕yq is not installed.\nPlease install it first. https://mikefarah.gitbook.io/yq/"
  exit 1
fi

repo="https://github.com/DynamoDS/actions"
output_file="README.md"

echo "ℹ️  Generating Readme..."
for dir in */ ; do
  action=$(basename $dir)
  action_file="$action/action.yml"
  if [ -f "$action_file" ]; then
    action_name=$(yq '.name' $action_file)
    name="[$action_name]($action_file)"
    description=$(yq '.description' $action_file)
    docs=""
    example_workflow=""
    status=""

    # sh $(dirname $0)/generate_docs.sh $action
    if [ -f "$action/README.md" ]; then
      docs="[docs]($action/README.md)"
    fi

    workflow="${action}_action.yml"
    workflow_file=".github/workflows/$workflow"
    if [ -f "$workflow_file" ]; then
      workflow_name=$(yq '.name' $workflow_file)
      example_workflow="[$workflow]($workflow_file)"
      status="[![$workflow_name]($repo/actions/workflows/$workflow/badge.svg)]($repo/actions/workflows/$workflow)"
    fi

    actions+="$name | $description | $docs | $example_workflow | $status"$'\n'
  fi
done

# Create the readme file
cat > $output_file <<EOF
<!-- ! This file is auto-generated. Please run ./$0 to regenerate it. -->
# Actions

Collection of compostite actions

name | description | docs | example workflow | status
-----|-------------|------|------------------|-------
$actions
More info:

- [Creating a composite action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action)
- [Wiki](https://wiki.autodesk.com/pages/viewpage.action?pageId=2009017625)
EOF

echo "✅ Readme generated: $output_file"
