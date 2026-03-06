terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url      = var.proxmox_api_url
  pm_api_token_id = var.proxmox_api_token_id  # example: "terraform@pam!terraform"
  pm_api_secret   = var.proxmox_api_secret    # the actual API token secret
  pm_tls_insecure = true
}