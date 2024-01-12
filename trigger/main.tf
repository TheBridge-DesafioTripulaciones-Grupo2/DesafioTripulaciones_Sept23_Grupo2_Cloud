# Configuración del proveedor de infraestructura (Google Cloud)
provider "google" {
  credentials = file("./credentials.json")
  project     = var.project_id
  region      = "eu-west1"
}

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
  
 filename = "cloudbuild.yaml"

  substitutions = {
    _BUILD_ID    = "${google_cloudbuild_trigger.example.id}"
    _BRANCH_NAME = "$BRANCH_NAME"  # Cambiado de "${github.event_ref}"
    _COMMIT_SHA  = "$COMMIT_SHA"   # Cambiado de "${github.sha1}"
  }

}
  


