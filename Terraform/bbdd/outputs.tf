
# Salida para mostrar la dirección de conexión a la base de datos
output "db_instance_connection_name" {
  value = google_sql_database_instance.example.connection_name
}
