provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "dem-resource-group"
    storage_account_name = "dem-storage-acc"
    container_name       = "dem-container"
    key                  = "terraform.tfstate"
  }
}


