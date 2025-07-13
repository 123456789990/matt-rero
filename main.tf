terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "backendnilesh_rg"
    storage_account_name = "backendstgnilesh"
    container_name       = "backendcontainer"
    key                  = "gokul.terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "cc9c7c96-1363-4c58-85fc-fba96ba57b88"

}



