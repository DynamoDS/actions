# Contributing Guidelines

## Creating action

- Read the doc on [Creating a composite action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action).
- Create your action.
- Add an example workflow in `.github/workflows`
- Generate docs

    Run `./utils/generate_docs.sh <action>` to generate `<action>/docs.md`
- Generate [README.md](README.md)

    Run `./utils/generate_readme` to generate `README.md`

More info:

- [Wiki](https://wiki.autodesk.com/display/GEN/Dynamo+Reusable+Workflows+and+Composite+Actions)
