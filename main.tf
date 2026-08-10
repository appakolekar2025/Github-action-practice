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
  for_each = var.rg
  name = each.value.name
  location = each.value.location
  
}


