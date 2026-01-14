
# DevSecOps Lab: K8s + Terraform

Este proyecto implementa un flujo de trabajo **DevSecOps** local. Utiliza **Terraform** para aprovisionar recursos en un clúster de **Kubernetes (Minikube)**, desplegando una aplicación web contenerizada con **Docker**. El objetivo es demostrar la automatización de infraestructura y el manejo seguro de secretos.


## Badges

![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)
![Docker](https://img.shields.io/badge/Docker-Container-blue)


## Stack Tecnológico

* **IaC:** Terraform
* **Orquestador:** Minikube (K8s)
* **Contenedor:** Docker
* **Lenguaje:** HCL (HashiCorp Configuration Language)
## Pre-requisitos

Asegúrate de tener instalado:
1.  [Docker Desktop](https://www.docker.com/)
2.  [Minikube](https://minikube.sigs.k8s.io/docs/start/)
3.  [Terraform CLI](https://developer.hashicorp.com/terraform/install)


## Como desplegar

Clonar el repositorio

```bash
  git clone https://github.com/Byron-115/devsecops-lab
```

Ir a directorio del proyecto

```bash
  cd my-project
```

Preparar el entorno (Minikube)

```bash
  minikube start
```

Desplegar con Terraform 

```bash
  terraform init
  terraform apply
```

Acceder a la aplicació 

```bash
  minikube service dashboard-security-service 
```



## Estructura del proyecto

- **/frontend**: Código fuente y Dockerfile de la aplicación
- **main.tf**: Definición de la infraestructura (Deployment, Services) 
- **.gitignore**: Reglas de seguridad para evitar subir secretos


