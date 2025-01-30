# providers.tf
provider "azurerm" {
  features {}

  # For using different environments, you may want to configure different aliases
  alias = "dev"  # You can create different alias configurations if needed
}
