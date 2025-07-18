#####################################################################
# Terraform Cloud Workspaces
#####################################################################
resource "tfe_workspace" "tfcloud-workspaces" {
  name                  = "tfcloud-workspaces"
  organization          = var.organization
  working_directory     = "tfcloud"
  auto_apply            = true
  file_triggers_enabled = true
  queue_all_runs        = true

  vcs_repo {
    branch                     = "main"
    identifier                 = var.github-repo
    github_app_installation_id = data.tfe_github_app_installation.github-app.id
  }
}

#####################################################################
# CloudFlare DNS
#####################################################################

resource "tfe_workspace" "cloudflare-dns" {
  name                  = "cloudflare-dns"
  organization          = var.organization
  working_directory     = "cf-dns"
  auto_apply            = true
  file_triggers_enabled = true
  queue_all_runs        = true

  vcs_repo {
    branch                     = "main"
    identifier                 = var.github-repo
    github_app_installation_id = data.tfe_github_app_installation.github-app.id
  }
}

#####################################################################
# GCP Dynamic Credentials (CLI-driven)
#####################################################################
resource "tfe_workspace" "gcp-dynamic-credentials" {
  name                  = "gcp-dynamic-credentials"
  organization          = var.organization
  auto_apply            = true
  file_triggers_enabled = true
  queue_all_runs        = true
}