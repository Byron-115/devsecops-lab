# main.tf 

terraform {
    required_providers {
        kubernetes =  {
            source = "hashicorp/kubernetes"
            version = ">= 2.0.0"
        }
    }
}

provider "kubernetes" {
    config_path = "~/.kube/config"
}


resource "kubernetes_deployment_v1" "dashboard" {
   metadata {
    name = "dashboard-security-deployment"
    labels = {
        app = "dashboard-security"
    }
   }

   spec {
        replicas = 2

        selector {
            match_labels = {
                app = "dashboard-security"
            }
        }

        template {
            metadata {
                labels = {
                    app = "dashboard-security"
                }
            }
        
            spec {
                container {
                    image = "dashboard-sec:v1"
                    name = "dashboard-container"

                    image_pull_policy = "Never"

                    port {
                        container_port = 80
                    }
                }
            }
        }
   }
}

resource "kubernetes_service" "dashboard_service" {
    metadata {
        name = "dashboard-security-service"
    }
    spec {
        selector = {
            app = kubernetes_deployment_v1.dashboard.spec.0.template.0.metadata.0.labels.app
        }

        type = "NodePort"

        port {
            port        = 8080
            target_port = 80
        }
    }
}
