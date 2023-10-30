resource_group_name     = "public-ip-rg"
location                = "southeastasia"
allocation_method       = "Static"
domain_name_label       = "public-ip"
sku                     = "Standard"
sku_tier                = "Regional"
reverse_fqdn            = null
ddos_protection_mode    = "Disabled" #VirtualNetworkInherited
ddos_protection_plan_id = null
edge_zone               = null
idle_timeout_in_minutes = 4
ip_tags                 = {}
ip_version              = "IPv4"


