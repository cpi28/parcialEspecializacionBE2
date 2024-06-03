# Proyecto para el Parcial de la Especialización en Back End 2

Este proyecto es una aplicación de microservicios desarrollada con Spring Boot. Contiene los siguientes componentes:

- **El Aparato:** Un microservicio central que maneja las funcionalidades principales del sistema.
- **API Gateway:** Un punto de entrada único para todas las peticiones externas. El API Gateway dirige las solicitudes a los microservicios correspondientes.
- **Gestor de Usuarios con Keycloak:** Un componente encargado de la autenticación y autorización de los usuarios utilizando Keycloak.

## Tecnologías Utilizadas

- Java
- Spring Boot
- Keycloak
- Docker
- SQL

## Configuración

### Requisitos Previos

Antes de ejecutar el proyecto, asegúrate de tener instalado lo siguiente:

- Java JDK 8 o superior
- Maven
- Docker para la ejecución de Keycloak (importar el realm.json que se adjunta con este proyecto y crear los usuarios como figuran en el archivo.txt)
- Workbench para la base de datos SQL (se debera crear la base elaparato antes de ejecutar el microservicio)

### Configuración del Entorno

1. Clona este repositorio en tu máquina local.
2. Inicia los microservicios en el orden adecuado (por ejemplo, primero Keycloak y Workbench, luego El Aparato y finalmente el API Gateway).


