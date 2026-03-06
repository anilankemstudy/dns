resource "proxmox_virtual_environment_container" "ubuntu_lxc" {
  node_name   = var.node_name
  vm_id       = var.container_vmid
  description = "Terraform managed LXC container"

  initialization {
    hostname = "dns-server"

    user_account {
      name     = "root"
      password = var.root_password
      keys     = [file("~/.ssh/id_ed25519.pub")]
    }
  }

  network_interface {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "192.168.1.40/24"
    gw     = "192.168.1.1"
  }

  operating_system {
    template_file_id = var.template_file_id
    type             = "ubuntu"
  }

  start = true
}
