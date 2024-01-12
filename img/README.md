# DesafioTripulaciones-Grupo2-Cloud


Desde Cloud hemos creado una organización en GitHub con diferentes repositorios para cada vertical con el fin de ir canalizando y automatizando el trabajo de cada grupo.

![Alt text](img\imagen1.png>)

# Pipeline de despliegue en GCP

Los activadores en el contexto de una pipeline de despliegue son eventos o condiciones que inician automáticamente el proceso de despliegue. En este caso, lo hemos dividido en dos pipelines, una para  desarrollo y otra para producción. Estos activadores aseguran que el despliegue se realice en respuesta a cambios.

El activador esta asociado a un repositorio como GitHub, cuando se produce un cambio, el activador se pone en marcha, iniciando el proceso de construcción a través de Cloud Build.

Los principales eventos a tener en cuenta en el desarrollo de una pipeline son:

- Definir el Flujo de Trabajo (Workflow)
- Integración Continua (CI)
- Automatización de Pruebas
- Despliegue Continuo (CD)
- Monitoreo y Retroalimentación
- Gestión de Configuración
- Seguridad
- Pruebas en Producción



![Alt text](<Captura de pantalla 2024-01-10 122053.png>)

Cuando fullstack realiza un commit a la rama de dessarrollo, el activador se pone en marcha, ejecutando la cloudbuild, tal y como se muestra en la imagen inferior.

![Alt text](<Captura de pantalla 2024-01-10 122159.png>)

