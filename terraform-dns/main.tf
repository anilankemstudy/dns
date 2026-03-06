resource "proxmox_lxc" "ubuntu_lxc" {
  node_name = var.node_name         # Name of your Proxmox node
  vm_id     = 8001               # Unique VM ID
  hostname  = "dns-server"

  ostemplate = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"

  cores  = 2
  memory = 2048                 # 2GB RAM
  swap   = 512                  # Optional swap

  rootfs {
    storage = "local"       # Your storage name
    size    = "8G"
  }

 network {
  name   = "eth0"
  bridge = "vmbr0"
  ip     = "192.168.1.40/24"  # Your static IP with subnet mask
  gw     = "192.168.1.1"       # Optional: default gateway
}

  # SSH key and root password
  ssh_keys     = [var.ssh_public_key]
  password     = var.root_password
  lock         = false
  start        = true           # Start container after creation
}
