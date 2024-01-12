# Configuración del proveedor de infraestructura (Google Cloud)
provider "google" {
  credentials = file("./credentials.json")
  project     = var.project_id
  region      = "eu-west1"
}

module "cloudbuild_trigger" {
  source = "./cloudbuild_trigger"

  github_owner = var.github_owner
  github_repo  = var.github_repo
  project_id   = var.project_id
}

  


