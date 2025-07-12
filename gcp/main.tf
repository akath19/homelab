terraform {
  required_version = "~> 1.12"
  cloud {
    organization = "akath"

    workspaces {
      project = "homelab"
      name    = "gcp-resources"
    }
  }
}