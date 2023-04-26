provider "azurerm" {
   features {
   }
   subscription_id = "f37db539-0153-418c-937d-e29cfd199546"
   skip_provider_registration = true
 }
 
 resource "azurerm_resource_group" "example" {
    name    = "example-resource-group"
    location = "eastus"
 }
 
 resource "azurerm_kubernetes_cluster" "example" {
   name                = "thanusree-aks-cluster"
   location            = azurerm_resource_group.example.location
   resource_group_name = azurerm_resource_group.example.name
   dns_prefix          = "example-aks"
   
   default_node_pool {
     name            = "default"
     node_count      = 1
     vm_size         = "standard_DS2_v2"
     os_disk_size_gb = 30
   }
   
   identity {
     type = "SystemAssigned"
   }
   
   tags = {
     Environment = "dev"
   }
 }
