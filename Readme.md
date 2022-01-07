# Open Component Model CLI setup action

This action installs a dedicated version of the OCM tool to be used
in further steps. For example in a Makefile called as subsequenet step to
build a project.

## Inputs

### `version`

**Optional** The tool version to install. Default `"v0.32.0"`.

### `repo`

**Optional** The repository of the tool to install. Default `"gardener/component-cli"`.

## Outputs

## `ocm-path`

The installation path of the tool.
It is installed into a PATH folder. Therefore it can be directly be used, also.

## Example usage

```
uses: mandelsoft/ocm-setup@master
with:
  version: v0.31.0
```
