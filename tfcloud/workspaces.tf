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
# Google Cloud Platform
#####################################################################
resource "tfe_workspace" "gcp" {
  name                  = "gcp-resources"
  organization          = var.organization
  working_directory     = "gcp"
  auto_apply            = true
  file_triggers_enabled = true
  queue_all_runs        = true

  vcs_repo {
    branch                     = "main"
    identifier                 = var.github-repo
    github_app_installation_id = data.tfe_github_app_installation.github-app.id
  }
}

resource "tfe_variable" "gcp-provider-auth" {
  key          = "TFC_GCP_PROVIDER_AUTH"
  value        = data.tfe_outputs.gcp-dynamic-credentials.values.tfc_workspace_variables.TFC_GCP_PROVIDER_AUTH
  category     = "env"
  workspace_id = tfe_workspace.gcp.id
}

resource "tfe_variable" "gcp-project-number" {
  key          = "TFC_GCP_PROJECT_NUMBER"
  value        = data.tfe_outputs.gcp-dynamic-credentials.values.tfc_workspace_variables.TFC_GCP_PROJECT_NUMBER
  category     = "env"
  workspace_id = tfe_workspace.gcp.id
}

resource "tfe_variable" "gcp-service-account" {
  key          = "TFC_GCP_RUN_SERVICE_ACCOUNT_EMAIL"
  value        = data.tfe_outputs.gcp-dynamic-credentials.values.tfc_workspace_variables.TFC_GCP_RUN_SERVICE_ACCOUNT_EMAIL
  category     = "env"
  workspace_id = tfe_workspace.gcp.id
}

resource "tfe_variable" "gcp-workload-pool" {
  key          = "TFC_GCP_WORKLOAD_POOL_ID"
  value        = data.tfe_outputs.gcp-dynamic-credentials.values.tfc_workspace_variables.TFC_GCP_WORKLOAD_POOL_ID
  category     = "env"
  workspace_id = tfe_workspace.gcp.id
}

resource "tfe_variable" "gcp-workload-provider" {
  key          = "TFC_GCP_WORKLOAD_PROVIDER_ID"
  value        = data.tfe_outputs.gcp-dynamic-credentials.values.tfc_workspace_variables.TFC_GCP_WORKLOAD_PROVIDER_ID
  category     = "env"
  workspace_id = tfe_workspace.gcp.id
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