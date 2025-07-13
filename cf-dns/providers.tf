terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.6"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.67.1"
    }
  }
}

provider "cloudflare" {
  api_token = var.api-token
}

