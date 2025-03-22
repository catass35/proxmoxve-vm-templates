###################################################################################################################
###                                                 t2.micro                                                     ##
###################################################################################################################
resource "proxmox_virtual_environment_vm" "t2_micro" {
  name        = "t2-micro"
  node_name   = "proxmoxve"

  template    = true
  started     = false

  description = "Managed by Terraform"
  tags        = ["terraform", "alpine", "micro"]

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
    file_format = "raw"
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

###################################################################################################################
###                                                 t2.small                                                     ##
###################################################################################################################
resource "proxmox_virtual_environment_vm" "t2_small" {
  name        = "t2-small"
  node_name   = "proxmoxve"

  template    = true
  started     = false

  description = "Managed by Terraform"
  tags        = ["terraform", "alpine", "small"]

  cpu {
    cores = 1
  }

  memory {
    dedicated = 2048
  }

  disk {
    datastore_id = var.storage_pool
    size = 16
    interface = "virtio0"
    file_format = "raw"
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

###################################################################################################################
###                                                 t2.medium                                                    ##
###################################################################################################################
resource "proxmox_virtual_environment_vm" "t2_medium" {
  name        = "t2-medium"
  node_name   = "proxmoxve"

  template    = true
  started     = false

  description = "Managed by Terraform"
  tags        = ["terraform", "alpine", "medium"]

  cpu {
    cores = 2
  }

  memory {
    dedicated = 4096
  }

  disk {
    datastore_id = var.storage_pool
    size = 16
    interface = "virtio0"
    file_format = "raw"
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

###################################################################################################################
###                                                 t2.large                                                     ##
###################################################################################################################
resource "proxmox_virtual_environment_vm" "t2_large" {
  name        = "t2-large"
  node_name   = "proxmoxve"

  template    = true
  started     = false

  description = "Managed by Terraform"
  tags        = ["terraform", "alpine", "large"]

  cpu {
    cores = 2
  }

  memory {
    dedicated = 8192
  }

  disk {
    datastore_id = var.storage_pool
    size = 16
    interface = "virtio0"
    file_format = "raw"
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
