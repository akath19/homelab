terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.6"
    }
  }
}

provider "cloudflare" {
  api_token = var.api-token
}

