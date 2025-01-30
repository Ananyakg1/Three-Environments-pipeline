# main.tf
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-${var.environment}"
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = "st${var.environment}account"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "container-${var.environment}"
  storage_account_name = azurerm_storage_account.example.name
}

# Removed outputs defined earlier in the code

