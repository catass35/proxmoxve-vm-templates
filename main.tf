resource "proxmox_virtual_environment_vm" "t2_micro" {
  name        = "t2-micro"
  target_node = var.target_node
  iso         = var.iso_storage
  os_type     = "linux"
  cores       = 1
  sockets     = 1
  memory      = 1024
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"

  disk {
    slot     = 0
    size     = "10G"
    type     = "scsi"
    storage  = var.storage_pool
    storage_type = "lvm"
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  ipconfig0 = "ip=dhcp"
##  sshkeys   = file(var.ssh_public_key_file)
}
