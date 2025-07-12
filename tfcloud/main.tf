terraform {
  required_version = "~> 1.12"
  cloud {
    organization = "akath"

    workspaces {
      project = "homelab"
      name    = "tfcloud-workspaces"
    }
  }
}

data "tfe_outputs" "gcp-dynamic-credentials" {
  organization = "akath"
  workspace    = "gcp-dynamic-credentials"
}
