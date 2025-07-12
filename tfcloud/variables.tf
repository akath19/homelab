variable "api-token" {
  type        = string
  sensitive   = true
  description = "Terraform Cloud API Token"
}

variable "organization" {
  type        = string
  description = "Terraform Cloud Organization ID"
}

variable "github-app-id" {
  type        = string
  sensitive   = true
  description = "Github App Installation ID for VCS Integration"
}

variable "github-repo" {
  type        = string
  description = "Github Repo ID for VCS Integration"
}