resource "azurerm_resource_group" "hero_hub" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.hero_hub.name
  location            = azurerm_resource_group.hero_hub.location
}

module "compute" {
  source              = "./modules/compute"
  resource_group_name = azurerm_resource_group.hero_hub.name
  location            = azurerm_resource_group.hero_hub.location
  subnet_id           = module.network.subnet_id
  public_ip_id        = module.network.public_ip_id
  nsg_id              = module.network.nsg_id
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key_path = var.ssh_public_key_path
}
