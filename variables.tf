# Global Variables for Terraform

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
}

variable "storage_account_name" {
  description = "Azure Storage Account for Terraform state"
  type        = string
}

variable "container_name" {
  description = "Azure Blob container for Terraform state"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, qa, prod)"
  type        = string
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default = {
    Environment = "dev"
  }
}


