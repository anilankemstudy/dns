terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url             = var.proxmox_api_url

  # Auth via username/password (per provider docs)
  pm_user                = var.proxmox_user
  pm_password            = var.proxmox_password

  pm_tls_insecure        = true
}