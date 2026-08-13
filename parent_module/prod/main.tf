module "rg" {
  source = "../../child_module/azurerm_resource_group"
  rgs    = var.resource_group

}
module "vnet" {
  depends_on = [module.rg]
  source     = "../../child_module/azurerm_virtual_network"
  vnets      = var.virtual_network
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../child_module/azurerm_subnet"
  snets      = var.subnet
}
module "nsg" {
  depends_on = [module.subnet]
  source     = "../../child_module/azurerm_nsg"
  nsg        = var.network_security_group
}
module "nic" {
  depends_on = [module.nsg]
  source     = "../../child_module/azurerm_nic"
  nics       = var.network_interface
}
module "pip" {
  depends_on = [module.nic]
  source     = "../../child_module/azurerm_public_ip"
  pip        = var.public_ip
}
# module "kv" {
#   depends_on = [module.pip]
#   source     = "../../child_module/azurerm_key_valult"
#   kv         = var.key_vault
# }
module "vm" {
  depends_on = [module.nic]
  source     = "../../child_module/azurerm_virtual_machine"
  vms        = var.virtual_machine

}
