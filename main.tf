# =========================================================================================================================================================================
# UWAGA!:
# Plik Terraform w przypadku konfiguracji lokalnej klastra k8s na maszynach wirtualnych hostowanych na typowym hypervisorze, takim jak VirtualBox, VMWare, czy Hyper-V powiniene
# zostać uruchomiony na nodzie master klastra Kubernetes.
# =========================================================================================================================================================================



terraform {

  required_version = ">=1.5.5"
  
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }

}

# Tu do zmiany lokalizacja - chyba
provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Przykładowy config poniżej
resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"
  }
}

resource "kubernetes_deployment" "grafana_loki" {
  metadata {
    name      = "grafana-loki"
    namespace = kubernetes_namespace.monitoring.metadata[0].name
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "grafana-loki"
      }
    }

    template {
      metadata {
        labels = {
          app = "grafana-loki"
        }
      }

      spec {
        containers {
          name  = "grafana"
          image = "grafana/grafana:latest"
          ports {
            container_port = 3000
          }
        }

        containers {
          name  = "loki"
          image = "grafana/loki:latest"
          ports {
            container_port = 3100
          }
        }
      }
    }
  }
}

resource "kubernetes_namespace" "development" {
  metadata {
    name = "development"
  }
}

resource "kubernetes_deployment" "jenkins_promtail" {
  metadata {
    name      = "jenkins-promtail"
    namespace = kubernetes_namespace.development.metadata[0].name
  }

resource "kubernetes_deployment" "jenkins_promtail" {
  metadata {
    name      = "jenkins-promtail"
    namespace = kubernetes_namespace.development.metadata[0].name
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "jenkins-promtail"
      }
    }

    template {
      metadata {
        labels = {
          app = "jenkins-promtail"
        }
      }

      spec {
        containers {
          name  = "jenkins"
          image = "jenkins/jenkins:latest"
          ports {
            container_port = 8080
          }
        }

        containers {
          name  = "promtail"
          image = "grafana/promtail:latest"
          ports {
            container_port = 9080
          }
        }
      }
    }
  }
}
}