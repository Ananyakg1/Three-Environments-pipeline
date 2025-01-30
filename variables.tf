variable "location" {
  description = "The Azure region in which to create the resources."
  type        = string
}

variable "environment" {
  description = "The environment in which to deploy (dev, qa, prod)."
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "client_id" {
  description = "Azure Client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Client Secret"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}
