[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![pre-commit.ci status](https://results.pre-commit.ci/badge/github/brucellino/tfmod-template/main.svg)](https://results.pre-commit.ci/latest/github/brucellino/tfmod-template/main) [![semantic-release: conventional](https://img.shields.io/badge/semantic--release-conventional-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# tfmod-template

<!-- Delete this section when using the template repository -->

This is the template repository for my terraform modules.
It attempts to follow the [default structure](https://www.terraform.io/language/modules/develop/structure) for terraform modules.

It is designed to speed up development of new terraform modules by providing:

1. basic terraform setup for backend, providers, _etc_.
  1. the default required version for terraform is `>1.2.0`
1. common pre-commit hooks configuration
1. semantic release configuration
1. examples directory for testing and demonstration
1. default github actions workflows for testing and releasing

## How to use

<!-- Delete this section when using the template repository -->

If you want to make a new terraform module from scratch:

1. create a new repository using this one as template
1. delete the sections commented with `<!-- Delete this section when using the template repository -->`
1. update `terraform.tf` to declare the module's required providers
1. add the examples you need in `examples/<your example>`
1. update the test workflow in `.github/workflows/test.yml` to reflect your examples

## Pre-commit hooks

<!-- Edit this section or delete if you make no change  -->

The [pre-commit](https://pre-commit.com) framework is used to manage pre-commit hooks for this repository.
A few well-known hooks are provided to cover correctness, security and safety in terraform.

## Examples

The `examples/` directory contains the example usage of this module.
These examples show how to use the module in your project, and are also use for testing in CI/CD.

<!--

Modify this section according to the kinds of examples you want
You may want to change the names of the examples or the kinds of
examples themselves

-->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.12.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.2.3 |
| <a name="requirement_nomad"></a> [nomad](#requirement\_nomad) | 2.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |
| <a name="provider_nomad"></a> [nomad](#provider\_nomad) | 2.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nomad_job.agent_alloy](https://registry.terraform.io/providers/hashicorp/nomad/2.5.0/docs/resources/job) | resource |
| [nomad_namespace.ops](https://registry.terraform.io/providers/hashicorp/nomad/2.5.0/docs/resources/namespace) | resource |
| [local_file.alloy_config](https://registry.terraform.io/providers/hashicorp/local/2.2.3/docs/data-sources/file) | data source |
| [nomad_datacenters.deployed](https://registry.terraform.io/providers/hashicorp/nomad/2.5.0/docs/data-sources/datacenters) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alloy_version"></a> [alloy\_version](#input\_alloy\_version) | Version of Grafana Alloy to be used in monitoring | `string` | `"1.8.3"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
