Manages a Public IP Address.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#example-usage)

```hcl
resource "azurerm_resource_group" "example" { name = "example-resources" location = "West Europe" } resource "azurerm_public_ip" "example" { name = "acceptanceTestPublicIp1" resource_group_name = azurerm_resource_group.example.name location = azurerm_resource_group.example.location allocation_method = "Static" tags = { environment = "Production" } }
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#argument-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#name-4) - (Required) Specifies the name of the Public IP. Changing this forces a new Public IP to be created.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#resource_group_name-3) - (Required) The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#location-3) - (Required) Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created.
    
-   [`allocation_method`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#allocation_method-1) - (Required) Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
    

___

-   [`zones`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#zones-2) - (Optional) A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.

-   [`ddos_protection_mode`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#ddos_protection_mode-1) - (Optional) The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
    
-   [`ddos_protection_plan_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#ddos_protection_plan_id-1) - (Optional) The ID of DDoS protection plan associated with the public IP.
    

-   [`domain_name_label`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#domain_name_label-1) - (Optional) Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
    
-   [`domain_name_label_scope`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#domain_name_label_scope-1) - (Optional) Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`. Changing this forces a new Public IP to be created.
    
-   [`edge_zone`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#edge_zone-1) - (Optional) Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
    
-   [`idle_timeout_in_minutes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#idle_timeout_in_minutes-1) - (Optional) Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
    
-   [`ip_tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#ip_tags-1) - (Optional) A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
    

-   [`ip_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#ip_version-1) - (Optional) The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.

-   [`public_ip_prefix_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#public_ip_prefix_id-1) - (Optional) If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created.
    
-   [`reverse_fqdn`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#reverse_fqdn-1) - (Optional) A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
    
-   [`sku`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#sku-2) - (Optional) The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
    

-   [`sku_tier`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#sku_tier-1) - (Optional) The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.

-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#tags-3) - (Optional) A mapping of tags to assign to the resource.

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#id-3) - The ID of this Public IP.
    
-   [`ip_address`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#ip_address-1) - The IP address value that was allocated.
    

-   [`fqdn`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#fqdn-1) - Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#create-3) - (Defaults to 30 minutes) Used when creating the Public IP.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#update-3) - (Defaults to 30 minutes) Used when updating the Public IP.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#read-3) - (Defaults to 5 minutes) Used when retrieving the Public IP.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#delete-3) - (Defaults to 30 minutes) Used when deleting the Public IP.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set#import)

Public IPs can be imported using the `resource id`, e.g.

```shell
terraform import azurerm_public_ip.myPublicIp /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/publicIPAddresses/myPublicIpAddress1
```