terraform {
  required_version = "~> 1.12"
  cloud {
    organization = "akath"

    workspaces {
      project = "homelab"
      name    = "cloudflare-dns"
    }
  }
}

data "tfe_outputs" "gcp" {
  organization = "akath"
  workspace    = "gcp-resources"
}
