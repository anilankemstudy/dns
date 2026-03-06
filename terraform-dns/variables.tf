variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token" {
  type = string
  sensitive = true
}

variable "node_name" {
  type = string
  default = "proxmox"
}


variable "ssh_public_key" {}
variable "root_password" {}