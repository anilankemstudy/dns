terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 2.9.11"
    }
  }
}

locals {
  use_token = var.proxmox_auth_method == "token"
}

provider "proxmox" {
  pm_api_url             = var.proxmox_api_url

  # Auth (use either token OR user/password; leave the other as null)
  pm_api_token_id        = local.use_token ? var.proxmox_api_token_id : null
  pm_api_token_secret    = local.use_token ? var.proxmox_api_token_secret : null
  pm_user                = local.use_token ? null : var.proxmox_user
  pm_password            = local.use_token ? null : var.proxmox_password

  pm_tls_insecure        = true
}