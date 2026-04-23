output "resource_group_name" {
  value = azurerm_resource_group.hero_hub.name
}

output "public_ip_address" {
  description = "The public IP address of the deployed VM"
  value       = module.compute.vm_public_ip
}
