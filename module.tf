resource "azurerm_public_ip" "pip_object" {
  name                = module.pip_name.naming_convention_output[var.naming_convention_info.name].names.0
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  allocation_method   = lower(var.sku) == "standard" ? "Static" : var.allocation_method
  ddos_protection_mode    = var.ddos_protection_mode
  ddos_protection_plan_id = var.ddos_protection_plan_id
  edge_zone               = var.edge_zone
  ip_tags                 = var.ip_tags
  ip_version              = var.ip_version
  domain_name_label   = var.domain_name_label
  zones               = var.zones
  reverse_fqdn        = var.fqdn
  tags                = module.pip_name.naming_convention_output[var.naming_convention_info.name].tags.0
}
