
variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group."
}

variable "location" {
  type        = string
  default     = "southeastasia"
  description = "The name of the location."
}

variable "allocation_method" {
  type        = string
  default     = "Dynamic"
  description = "Allocation method of IP."
}

variable "domain_name_label" {
  type        = string
  default     = null
  description = "Domain name lable"
}

variable "zones" {
  type        = list(string)
  default     = null
  description = "Domain name lable"
}

variable "sku" {
  description = "The SKU of public ip - Basic/Standard"
  type        = string
  default     = "Basic"
}

variable "sku_tier" {
  description = "The SKU tier of public ip - Regional/Global"
  type        = string
  default     = "Regional"
}

variable "fqdn" {
  description = "Reverse FQDN "
  type        = string
  default     = null
}

variable "reverse_fqdn" {
  description = "Reverse FQDN"
  type        = string
  default     = null
  
}

variable "ddos_protection_mode" {
  description = "The DDoS protection mode. Valid values are Basic, Standard, and Disabled."
  type        = string
  default     = null
}

variable "ddos_protection_plan_id" {
  description = "The ID of the DDoS protection plan to associate with the public IP address."
  type        = string
  default     = null
}

variable "edge_zone" {
  description = "The edge zone from which this public IP will be served. This is required for public IP addresses used by Azure Kubernetes Service clusters. Possible values are: 'none', 'westus2euap', 'westcentralus', 'westcentralusstage', 'eastus', 'eastus2', 'eastus2euap', 'centralus', 'northcentralus', 'southcentralus', 'westus', 'westus2', 'canadacentral', 'canadaeast', 'brazilsouth', 'northeurope', 'westeurope', 'uksouth', 'ukwest', 'francecentral', 'germanywestcentral', 'norwayeast', 'switzerlandnorth', 'switzerlandwest', 'eastasia', 'southeastasia', 'japaneast', 'japanwest', 'koreacentral', 'koreasouth', 'australiaeast', 'australiasoutheast', 'australiacentral', 'australiacentral2', 'centralindia', 'southindia', 'westindia', 'southafricanorth', 'uaenorth', 'uaecentral', 'southafricawest', 'germanynorth', 'germanywestcentral', 'norwaywest', 'brazilsoutheast', 'eastus2euap', 'centraluseuap', 'westus3', 'eastus3', 'southeastasia2', 'eastasia2', 'centralindia2', 'jioindiawest', 'koreacentral2', 'francesouth', 'australiacentral3', 'australiasoutheast2', 'southindia2', 'westus2euap', 'westcentralus2', 'southafricawest2', 'switzerlandwest2', 'norwayeast2', 'germanywestcentral2', 'uaecentral2', 'uaenorth2', 'southafricanorth2', 'brazilsoutheast2', 'eastus2usgov', 'centralususgov', 'northcentralususgov', 'southcentralususgov', 'westususgov', 'eastus2euap2', 'centraluseuap2', 'westus3euap', 'eastus3euap', "
  type        = string
  default     = null
}

variable "ip_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}

variable "ip_version" {
  description = "The IP Version to use, IPv6 or IPv4. Possible values are IPv4 or IPv6."
  type        = string
  default     = "IPv4"
}

variable "public_ip_prefix_id" {
  description = "The ID of the Public IP Prefix resource to assign to the IP Address."
  type        = string
  default     = null
}

variable "idle_timeout_in_minutes" {
  description = "The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the sku is Standard."
  type        = number
  default     = null
}

variable "naming_convention_info" {
  description = "(Required) Specify the naming convention information to the resource."
  type = object({
    name         = string
    agency_code  = string
    project_code = string
    env          = string
    zone         = string
    tier         = string
  })
}

variable "tags" {
  type        = map(string)
  description = "Specify the tags to the resource. Additional tags will be appended based on the convention"
}
