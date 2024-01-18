# Configuración del proveedor de infraestructura (Google Cloud)
provider "google" {
  credentials = file("./credentials.json")
  project     = "desafio-tripulaciones-2"
  region      = "eu-west1" # Cambia a la región que desees
}

# Recurso para habilitar el servicio de SQL en tu proyecto
resource "google_project_service" "sql" {
  project = "desafio-tripulaciones-2"
  service = "sqladmin.googleapis.com"
}

# Recurso para crear una instancia de base de datos en Google Cloud SQL
resource "google_sql_database_instance" "example" {
  name             = var.db_instance_name
  database_version = var.db_instance_version
  project          = "desafio-tripulaciones-2"
  region           = "europe-west1" # Cambia a la región que desees

  settings {
    tier               = var.db_instance_tier
    activation_policy = "ALWAYS"

    ip_configuration {
      ipv4_enabled    = true
      authorized_networks {
        name  = "allow-db-access"
        value = "0.0.0.0/0"
      }
    }
  }

  depends_on = [google_project_service.sql]
}

# Recurso para crear un usuario y contraseña en la instancia de base de datos
resource "google_sql_user" "example" {
  name     = var.db_username
  instance = google_sql_database_instance.example.name

  # Define la contraseña como un argumento directo, no como un bloque
  password = "mghu_LnU1bFRKllBT5XD3IRVbCqUkC69LFr2Ds0Ik"
}

# Recurso para crear una base de datos en la instancia
resource "google_sql_database" "example" {
  name     = "mi-bbdd-prueba"
  instance = google_sql_database_instance.example.name
}





