variable "proxmox_api_url" {
  type        = string
  description = "Proxmox API URL (e.g. https://192.168.1.10:8006/api2/json)"
}

variable "proxmox_user" {
  type        = string
  description = "Proxmox API user (e.g. root@pam)"
}

variable "proxmox_password" {
  type        = string
  description = "Proxmox API password"
  sensitive   = true
}

variable "node_name" {
  type        = string
  description = "Proxmox node name"
  default     = "pve1"
}

variable "container_vmid" {
  type        = number
  description = "VMID for the LXC container"
  default     = 101
}

variable "root_password" {
  type        = string
  description = "Root password inside the LXC container"
  sensitive   = true
}

variable "template_file_id" {
  type        = string
  description = "Proxmox template file ID for the LXC"
  default     = "local:vztmpl/ubuntu-22.04-standard-cloudinit_22.04-1_amd64.tar.zst"
}
