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

  # Auth (use either token OR user/password; leave the other as null)
  pm_api_token_id        = var.proxmox_api_token_id
  pm_api_token_secret    = var.proxmox_api_token_secret
  pm_user                = var.proxmox_user
  pm_password            = var.proxmox_password

  pm_tls_insecure        = true
}