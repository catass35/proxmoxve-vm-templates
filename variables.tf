variable "proxmox_user" {
  description = "The Proxmox API user"
  type        = string
}

variable "api_token" {
   type=string
}

variable "storage_pool" {
  description = "The storage pool to use for the VM disk"
  type        = string
}

##variable "ssh_public_key_file" {
##  description = "Path to the SSH public key file"
##  type        = string
##}
