resource "google_cloudbuild_trigger" "example" {
  name        = "trigger-cliente-dev"
  description = "Descripción opcional"
  project     = var.project_id

  github {
    owner = var.github_owner
    name  = var.github_repo
    push {
      branch = "develop"
    }
  }
  
  filename = "cloudbuild_dev_client.yaml"
}
