# Terraform provider that provides access to azurerm
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.9.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

terraform {
  cloud {
    organization = "tech-with-andy"

    workspaces {
      name = "testingindev"
    }
  }
}
