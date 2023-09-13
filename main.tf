# File driver which ties up whole configuration

terraform {
  version = "1.5.7"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.72.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.serviceprinciple_id
  client_secret   = var.serviceprinciple_key
  tenant_id       = var.tenant_id

  features {}
}

module "cluster" {
  source = "./cluster_setup"
  serviceprinciple_id = var.serviceprinciple_id
  serviceprinciple_key = var.serviceprinciple_key
  ssh_key = var.ssh_key
  location = var.location
  kubernetes_version = var.kubernetes_version
}

module "ontop" {
  source = "./ontop_setup"
  host = "${module.cluster.host}"
  client_certificate = "${base64decode(module.cluster.client_certificate)}"
  client_key = "${base64decode(module.cluster.client_key)}"
  cluster_ca_certificate = "${base64decode(module.cluster.cluster_ca_certificate)}"
}