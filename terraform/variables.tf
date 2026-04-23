variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "stark-hero-hub-rg"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "Southeast Asia"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "starkadmin"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "/Users/mbmakk/.ssh/id_rsa.pub"
}
