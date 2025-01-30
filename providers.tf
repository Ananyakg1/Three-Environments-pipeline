terraform {
  backend "azurerm" {
    resource_group_name   = "new-resource-group"
    storage_account_name  = "new-storageaccount"
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

  # Default provider for general use
}

# Dev environment provider
provider "azurerm" {
  alias           = "dev"
  features {}
}

# QA environment provider
provider "azurerm" {
  alias           = "qa"
  features {}
}

# Prod environment provider
provider "azurerm" {
  alias           = "prod"
  features {}
}
