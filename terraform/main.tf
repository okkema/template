locals {
  secrets = {
    "TF_API_TOKEN" : var.TF_API_TOKEN,
    "WORKFLOW_ISSUES_TOKEN": var.WORKFLOW_ISSUES_TOKEN
  }
}

module "secrets" {
  for_each = local.secrets

  source  = "app.terraform.io/okkema/secret/github"
  version = "0.1.0"

  repository = var.github_repository
  key        = each.key
  value      = each.value
}
