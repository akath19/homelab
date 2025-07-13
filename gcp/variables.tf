variable "project" {
  type        = string
  description = "Project ID to create resources in"
}

variable "region" {
  type        = string
  description = "Region to create resources in"
}

variable "zone" {
  type        = string
  description = "Zone within region to create resources in"
}

variable "tfe-sa" {
  type        = string
  description = "Terraform Cloud SA email"
}