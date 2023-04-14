# Okkema Labs Template

JavaScript template repository for Okkema Labs. Uses [githooks](https://git-scm.com/docs/githooks) for automatic versioning and [Terraform](https://developer.hashicorp.com/terraform) for infrastructure provisioning.

## Workflows
- [terraform](./.github/workflows/terraform.yaml)
  - Validates and applies [/terraform](./terraform)
- [issues](./.github/workflows/issues.yaml)
  - Add issues to Okkema Labs project
- [release](./.github/workflows/release.yaml)
  - Create a release for each new version

## Versioning
Versions are automatically incremented using [/.githooks](./.githooks) following [Semantic Versioning](https://semver.org/). Every commit will increment the version, `prerelease` by default. The version can be set by including `"#<VERSION>"` in the commit message, e.g. `"Some feature #minor"`. See [npm version](https://docs.npmjs.com/cli/v9/commands/npm-version) for more details.

