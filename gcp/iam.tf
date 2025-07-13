module "tfe-sa-iam" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [var.project]
  mode     = "authoritative"

  bindings = {
    "roles/iam.securityAdmin" = [
      "serviceAccount:${var.tfe-sa}"
    ]
    "roles/compute.admin" = [
      "serviceAccount:${var.tfe-sa}"
    ]
    "roles/compute.serviceAgent" = [
      "serviceAccount:${var.tfe-sa}"
    ]
  }
}


resource "google_service_account" "monitoring-vm" {
  account_id   = "monitoring"
  display_name = "Monitoring VM"
}
