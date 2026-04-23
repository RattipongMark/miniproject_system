terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatemakk1776959829"
    container_name       = "tfstate"
    # key will be passed dynamically via -backend-config in GitHub Actions
  }
}

provider "azurerm" {
  features {}
}
