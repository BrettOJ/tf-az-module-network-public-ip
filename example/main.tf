
terraform {
  required_version = ">= 1.3.7"
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.39.1"
    }
  }
}

provider "azurerm" {
  storage_use_azuread        = false
  use_msi                    = false
  skip_provider_registration = false
  tenant_id                  = "e08ace22-2c12-4de6-8b26-3a5d0f62aed1"
  subscription_id            = "ebfc17a8-f669-477f-ae9b-d648dca8789d"
  features {}
}