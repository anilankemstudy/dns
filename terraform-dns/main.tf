resource "proxmox_lxc" "ubuntu_lxc" {
  node_name = var.node_name
  vm_id     = 8001
  hostname  = "dns-server"

  ostemplate = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"

  cores  = 2
  memory = 2048
  swap   = 512

  rootfs {
    storage = "local"
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "192.168.1.40/24"
    gw     = "192.168.1.1"
  }

  ssh_keys = [var.ssh_public_key]   # Inject SSH key
  password = var.root_password      # Root password
  lock     = false
  start    = true
}
