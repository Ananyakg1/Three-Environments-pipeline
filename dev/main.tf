provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "harsharg-${var.env}"
  location = var.location
}

