resource "azurerm_network_watcher" "net_watch" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.tags
}