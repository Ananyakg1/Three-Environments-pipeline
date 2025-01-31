provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name   = "vm"
    storage_account_name  = "hvms"
    container_name        = "hvmsc"
    key                   = "terraform.tfstate"
  }
}

