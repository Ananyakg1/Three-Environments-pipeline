terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "yourbackendstorage"
    container_name       = "terraform-state"
    key                  = "qa.tfstate"
  }
}

provider "azurerm" {
  features {}
}
