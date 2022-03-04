output "vm_id" {
  value = azurerm_windows_virtual_machine.windowsvm.id
}

output "vm_ip" {
  value = azurerm_windows_virtual_machine.windowsvm.public_ip_address
}