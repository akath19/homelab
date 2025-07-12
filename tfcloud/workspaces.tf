resource "tfe_workspace" "tfcloud-workspaces" {
  name         = "tfcloud-workspaces"
  organization = var.organization

  vcs_repo {
    branch                     = "main"
    identifier                 = var.github-repo
    github_app_installation_id = var.github_app_id
  }
}