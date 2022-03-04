variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "RG location in Azure"
}

variable "virtual_network_name" {
  type        = string
  description = "VNET name in Azure"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name in Azure"
}

variable "linux_public_ip_name" {
  type        = string
  description = "Linux Public IP name in Azure for Linux VM"
}

variable "network_security_group_name" {
  type        = string
  description = "NSG name in Azure"
}

variable "network_interface_name" {
  type        = string
  description = "NIC name in Azure"
}

variable "linux_virtual_machine_name" {
  type        = string
  description = "Linux VM name in Azure"
}

variable "environment" {
  type = string
  description = "Tag for resources in Azure"
}

variable "vm_size" {
  type = string
  description = "VM size for Azure deployment"
}


variable "vm_username" {
  type = string
  description = "Username for the VM on Azure"
}

variable "vm_hostname" {
  type = string
  description = "Hostname for the Azure VM"
}

variable "vm_password" {
  type = string
  description = "Password for the Azure VM"
}