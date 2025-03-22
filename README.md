# proxmoxve-vm-templates

## example result

Terraform will perform the following actions:

  # proxmox_virtual_environment_vm.t2_micro will be created
  + resource "proxmox_virtual_environment_vm" "t2_micro" {
      + acpi                    = true
      + bios                    = "seabios"
      + description             = "Managed by Terraform"
      + id                      = (known after apply)
      + ipv4_addresses          = (known after apply)
      + ipv6_addresses          = (known after apply)
      + keyboard_layout         = "en-us"
      + mac_addresses           = (known after apply)
      + migrate                 = false
      + name                    = "t2-micro"
      + network_interface_names = (known after apply)
      + node_name               = "proxmoxve"
      + on_boot                 = true
      + protection              = false
      + reboot                  = false
      + reboot_after_update     = true
      + scsi_hardware           = "virtio-scsi-pci"
      + stop_on_destroy         = false
      + tablet_device           = true
      + tags                    = [
          + "terraform",
          + "alpine",
        ]
      + template                = true
      + timeout_clone           = 1800
      + timeout_create          = 1800
      + timeout_migrate         = 1800
      + timeout_move_disk       = 1800
      + timeout_reboot          = 1800
      + timeout_shutdown_vm     = 1800
      + timeout_start_vm        = 1800
      + timeout_stop_vm         = 300
      + vm_id                   = (known after apply)

      + cpu {
          + cores      = 1
          + hotplugged = 0
          + limit      = 0
          + numa       = false
          + sockets    = 1
          + type       = "qemu64"
          + units      = 1024
        }

      + disk {
          + aio               = "io_uring"
          + backup            = true
          + cache             = "none"
          + datastore_id      = "local-lvm"
          + discard           = "ignore"
          + file_format       = (known after apply)
          + interface         = "virtio0"
          + iothread          = false
          + path_in_datastore = (known after apply)
          + replicate         = true
          + size              = 16
          + ssd               = false
        }

      + initialization {
          + datastore_id = "local-lvm"
          + upgrade      = (known after apply)

          + ip_config {
              + ipv4 {
                  + address = "dhcp"
                }
            }

          + user_account {
              + password = (sensitive value)
              + username = "ubuntu"
            }
        }

      + memory {
          + dedicated      = 1024
          + floating       = 0
          + keep_hugepages = false
          + shared         = 0
        }

      + network_device {
          + bridge      = "vmbr0"
          + enabled     = true
          + firewall    = false
          + mac_address = (known after apply)
          + model       = "virtio"
          + mtu         = 0
          + queues      = 0
          + rate_limit  = 0
          + vlan_id     = 0
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.
