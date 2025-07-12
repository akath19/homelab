terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.67"
    }
  }
}

provider "tfe" {
  token = var.api-token
}

