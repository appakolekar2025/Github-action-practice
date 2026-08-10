terraform{
    required_providers {
      azurerm={
        source = "hashicorp/azurerm"
      }
    }
    backend "azurerm" {
      resource_group_name  = "prod-rg"
      storage_account_name = "prodtffhhjstorage1234"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
    }
}
provider "azurerm"{
    features {
      
    }
}