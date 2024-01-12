# DesafioTripulaciones-Grupo2-Cloud


Desde Cloud hemos creado una organización en GitHub con diferentes repositorios para cada vertical con el fin de ir canalizando y automatizando el trabajo de cada grupo.

![Alt text](img/imagen1.png)


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



![Alt text](img/imagen2.png)

Cuando fullstack realiza un commit a la rama de dessarrollo, el activador se pone en marcha, ejecutando la cloudbuild, tal y como se muestra en la imagen inferior.

![Alt text](img/imagen3.png)

# Infraestructura como código con TERRAFORM

Terraform es una herramienta de código abierto desarrollada por HashiCorp que se utiliza para automatizar la infraestructura y la gestión de la configuración. Permite a los usuarios definir y provisionar de manera declarativa la infraestructura y los recursos en la nube mediante la creación de archivos de configuración llamados "archivos de configuración de Terraform". Estos archivos describen los recursos deseados y sus relaciones, y Terraform se encarga de crear, modificar o destruir esos recursos de manera eficiente y coherente. La herramienta es compatible con varios proveedores de servicios en la nube, como AWS, Azure, Google Cloud, entre otros, lo que facilita la gestión de la infraestructura en entornos multicloud.

En el equipo de Cloud, hemos decidido utilizar Google Cloud Platform (GCP) como proveedor de nube para levantar nuestra aplicación, y como consecuencia Terraform es la herramienta que mejor se adapta a las necesidades de automatización en GCP.





