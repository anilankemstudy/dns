output "lxc_id" {
  description = "ID of the created LXC container"
  value       = proxmox_virtual_environment_container.ubuntu_lxc.id
}
