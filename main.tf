terraform{
    required_providers {
      azurerm={
        source = "hashicorp/azurerm"
      }
    }
}
provider "azurerm"{
    features {
      
    }
}

resource "azurerm_resource_group" "RG" {
  name = "myrg"
  location = "centralindia"
  
}
resource "azurerm_resource_group" "RG1" {
  name = "myrg1"
  location = "eastus"
  
}