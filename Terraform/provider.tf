terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "T-backend-files"
    storage_account_name = "tfstatefilebackend"
    container_name       = "tcontiner"
    key                  = "terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}

}
