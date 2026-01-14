DevSecOps Lab: K8s + Terraform

Este proyecto implementa un flujo de trabajo DevSecOps local. Utiliza Terraform para aprovisionar recursos en un clúster de Kubernetes (Minikube), desplegando una aplicación web contenerizada con Docker. El objetivo es demostrar la automatización de infraestructura y el manejo seguro de secretos.
Badges

Terraform Kubernetes Docker
Stack Tecnológico

    IaC: Terraform
    Orquestador: Minikube (K8s)
    Contenedor: Docker
    Lenguaje: HCL (HashiCorp Configuration Language)

Pre-requisitos

Asegúrate de tener instalado:

    Docker Desktop
    Minikube
    Terraform CLI

Como desplegar

Clonar el repositorio

  git clone https://github.com/Byron-115/devsecops-lab

Ir a directorio del proyecto

  cd my-project

Preparar el entorno (Minikube)

  minikube start

Desplegar con Terraform

  terraform init
  terraform apply

Acceder a la aplicació

  minikube service dashboard-security-service 

Estructura del proyecto

    /frontend: Código fuente y Dockerfile de la aplicación
    main.tf: Definición de la infraestructura (Deployment, Services)
    .gitignore: Reglas de seguridad para evitar subir secretos