terraform {
  backend "azurerm" {
    resource_group_name   = "new1-resource-group"
    storage_account_name  = "mystorageaccount"
    container_name        = "new-container"
    key                   = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

