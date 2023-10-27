locals {
  tags = {
    "created-by" = "Terraform"

  naming_convention_info = {
    name         = "001"
    project_code = "knj"
    env          = "dev"
    zone         = "z1"
    agency_code  = "konjur"
    tier         = "dta"
    }
  }
}

module "resource_groups" {
  source = "git::https://dev.azure.com/innersource/Merlion/_git/tf-module-az-resource-group?ref=main"
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
  source                 = "git::https://dev.azure.com/innersource/Merlion/_git/tf-module-az-network-public-ip-prefix?ref=main"
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
  source                  = "../" #"git::https://dev.azure.com/innersource/Merlion/_git/tf-module-az-public-ip?ref=main"
  location                = var.location
  resource_group_name     = var.resource_group_name
  naming_convention_info  = local.naming_convention_info
  sku                     = var.sku
  sku_tier                = var.sku_tier
  allocation_method       = var.allocation_method
  domain_name_label       = var.domain_name_label
  zones                   = var.zones
  reverse_fqdn            = var.reverse_fqdn
  ddos_protection_mode    = var.ddos_protection_mode
  ddos_protection_plan_id = var.ddos_protection_plan_id
  edge_zone               = var.edge_zone
  ip_tags                 = var.ip_tags
  ip_version              = var.ip_version
  public_ip_prefix_id     = module.azurerm_public_ip_prefix.pipprefix_output.id
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  tags                    = local.tags
}
