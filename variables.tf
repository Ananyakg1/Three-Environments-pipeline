# variables.tf
variable "location" {
  type        = string
  description = "The Azure region for the resources"
}

variable "environment" {
  type        = string
  description = "The environment (dev, qa, prod)"
}

variable "subscription_id" {
  type        = string
  description = "The Azure Subscription ID"
}

variable "client_id" {
  type        = string
  description = "The Azure Client ID"
}

variable "client_secret" {
  type        = string
  description = "The Azure Client Secret"
}

variable "tenant_id" {
  type        = string
  description = "The Azure Tenant ID"
}

