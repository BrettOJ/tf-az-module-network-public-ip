locals {
  naming_convention_info = {
    name         = "001"
    env          = "dev"
    agency_code  = "boj"
    project_code = "mer"
    zone         = "1"
    tier         = "app"
  }
  tags = {
    "Environment" = "Dev"
    "Owner"       = "DevOps"
    "Project"     = "MyProject"
  }
}


module "resource_groups" {
  source = "git::https://github.com/BrettOJ/tf-az-module-resource-group?ref=main"
  resource_groups = {
    vmss = {
      name                   = var.resource_group_name
      location               = var.location
      naming_convention_info = local.naming_convention_info
      tags                   = local.tags
    }
  }
}

module "azurerm_public_ip_prefix" {
  source                 = "git::https://github.com/BrettOJ/tf-az-module-network-public-ip-prefix?ref=main"
  location               = var.location
  resource_group_name    = var.resource_group_name
  naming_convention_info = local.naming_convention_info
  sku                    = var.sku
  ip_version             = "IPv4"
  prefix_length          = 28
  zones                  = ["1"]
  tags                   = local.tags
}

module "azurerm_public_ip" {
  source                  = "git::https://github.com/BrettOJ/tf-az-module-network-public-ip"
  location                = var.location
  resource_group_name     = var.resource_group_name
  naming_convention_info  = local.naming_convention_info
  sku                     = var.sku
  allocation_method       = var.allocation_method
  domain_name_label       = var.domain_name_label
  ddos_protection_mode    = var.ddos_protection_mode
  ddos_protection_plan_id = var.ddos_protection_plan_id
  edge_zone               = var.edge_zone
  ip_tags                 = var.ip_tags
  ip_version              = var.ip_version
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  zones                   = var.zones
  tags                    = local.tags
}
