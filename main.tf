# Configuración del proveedor de infraestructura (Google Cloud)
provider "google" {
  credentials = file("./credentials.json")
  project     = var.project_id
  region      = "europe-west1"
}

# Módulo Cloud Build Trigger para el repositorio
module "cloudbuild_triggers" {
  source = "./cloudbuild_trigger"
  github_owner = var.github_owner
  github_repo  = var.github_repo
  project_id   = var.project_id
  triggers     = var.triggers
}
