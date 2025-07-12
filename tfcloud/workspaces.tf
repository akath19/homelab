data "tfe_github_app_installation" "github-app" {
  installation_id = var.github-app-id
}

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