variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type    = string
  default = null
  sensitive = true
}

variable "proxmox_api_token_secret" {
  type      = string
  default   = null
  sensitive = true
}

variable "proxmox_user" {
  type    = string
  default = null
}

variable "proxmox_password" {
  type      = string
  default   = null
  sensitive = true
}
variable "node_name" {
  type = string
  default = "proxmox"
}
variable "ssh_public_key" {
  type = string
}

variable "root_password" {
  type      = string
  sensitive = true
}
