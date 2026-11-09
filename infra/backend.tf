# -----------------------------------------------------------------------------
# Terraform remote backend configuration (Azure Storage)
#
# Goal:
# - Store Terraform state remotely in Azure Blob Storage.
# - Allow consistent state management across machines and CI pipelines.
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# BACKEND SETTINGS
# -----------------------------------------------------------------------------
terraform {
  # Use AzureRM backend for remote state storage.
  backend "azurerm" {
    # Resource Group that contains the storage account for tfstate.
    resource_group_name = "sujalkamble07-tfstate-rg"

    # Storage Account where Terraform state is persisted.
    storage_account_name = "sujalkamble07tfstate01"

    # Blob container that stores state files.
    container_name = "tfstate"

    # State file name (blob key).
    key = "aks-fastapi.tfstate"
  }
}
