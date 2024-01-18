variable "project_id" {
  description = "desafio-tripulaciones-2"
}

variable "github_owner" {
  description = "EloyCD"
}

variable "github_repo" {
  description = "DesafioTripulaciones_Sept23_Grupo2_fullstack"
}

variable "triggers" {
  description = "Mapa de configuraciones de triggers"
  type        = map(object({
    branch    = string
    filename = string
  }))
}
