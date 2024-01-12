/*
variable "db_instance_name" {
  description = "mi-bbdd-prueba"
  type        = string
}

variable "db_instance_version" {
  description = "POSTGRES_15"
  type        = string
}

variable "db_instance_tier" {
  description = "db-f1-micro"
  type        = string
}

variable "db_username" {
  description = "POSTGRESS"
  type        = string
}

variable "db_password" {
  description = "123456789"
  type        = string
}
*/

variable "db_instance_name" {
  description = "mi-bbdd-prueba"
  type        = string
  default     = "mmi-bbdd-prueba"
}

variable "db_instance_version" {
  description = "POSTGRES_15"
  type        = string
  default     = "POSTGRES_15"
}

variable "db_instance_tier" {
  description = "db-f1-micro"
  type        = string
  default     = "db-f1-micro"
}

variable "db_username" {
  description = "POSTGRESS"
  type        = string
  default     = "POSTGRESS"
}

variable "db_password" {
  description = "123456789"
  type        = string
  default     = "123456789"
}
