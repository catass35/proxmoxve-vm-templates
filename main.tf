resource "proxmox_virtual_environment_vm" "t2_micro" {
  name        = "t2-micro"
  node_name   = "proxmoxve"

  template    = true
  started     = false

  description = "Managed by Terraform"
  tags        = ["terraform", "alpine"]

  cpu {
    cores = 1
  }

  memory {
    dedicated = 1024
  }

  disk {
    datastore_id = var.storage_pool
    size = 16
    interface = "virtio0"
    file_format = raw
  }

  network_device {
    bridge = "vmbr0"
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
    user_account {
      username = "ubuntu"
      password = "ubuntu"
    }
  }

}
