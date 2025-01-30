provider "azurerm" {
  features = {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# Resource Group
resource "azurerm_resource_group" "example" {
  name     = "${var.environment}-resource-group"
  location = var.location
}

# Storage Account
resource "azurerm_storage_account" "example" {
  name                     = "${var.environment}storageacc"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}

# Storage Container
resource "azurerm_storage_container" "example" {
  name                  = "${var.environment}-container"
  storage_account_name = azurerm_storage_account.example.name
  container_access_type = "private"
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "storage_account_name" {
  value = azurerm_storage_account.example.name
}

output "storage_container_name" {
  value = azurerm_storage_container.example.name
}
