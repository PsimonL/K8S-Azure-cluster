resource "azurerm_resource_group" "aks-k8s-cluster" {
  name     = "aks-k8s-cluster"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks-k8s-cluster" {
  name                  = "aks-k8s-cluster"
  location              = azurerm_resource_group.aks-k8s-cluster.location
  resource_group_name   = azurerm_resource_group.aks-k8s-cluster.name
  dns_prefix            = "aks-k8s-cluster"            
  kubernetes_version    =  var.kubernetes_version

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_E2s_v2"
    type       = "VirtualMachineScaleSets"
    os_disk_size_gb = 30
  }

  service_principal  {
    client_id = var.serviceprinciple_id
    client_secret = var.serviceprinciple_key
  }

  linux_profile {
    admin_username = ""
    ssh_key {
        key_data = var.ssh_key
    }
  }

  network_profile {
      network_plugin = "kubenet"
      load_balancer_sku = "Standard"
  }

  addon_profile {
    aci_connector_linux {
      enabled = false
    }

    azure_policy {
      enabled = false
    }

    http_application_routing {
      enabled = false
    }

    kube_dashboard {
      enabled = false
    }

    oms_agent {
      enabled = false
    }
  }
}
