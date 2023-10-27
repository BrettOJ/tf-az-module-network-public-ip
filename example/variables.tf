
variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group."
}

variable "location" {
  type        = string
  default     = ""
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
  description = "The SKU tier of public ip - Basic/Standard"
  type        = string
  default     = "Regional"
}


variable "reverse_fqdn" {
  description = "Reverse FQD"
  type        = string
  default     = null
}

variable "ddos_protection_mode" {
  description = "The DDoS protection mode of the public IP. Possible values are Disabled, Enabled, and VirtualNetworkInherited. Defaults to VirtualNetworkInherited."
  type        = string
  default     = "VirtualNetworkInherited"
}

variable "ddos_protection_plan_id" {
  description = "The ID of DDoS protection plan associated with the public IP."
  type        = string
  default     = null
}

variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created."
  type        = string
  default     = null
}

variable "idle_timeout_in_minutes" {
  description = "Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes."
  type        = number
  default     = 4
}

variable "ip_tags" {
  description = "A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created."
  type        = map(string)
  default     = {}
}

variable "ip_version" {
  description = "The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created."
  type        = string
  default     = "IPv4"
}

variable "public_ip_prefix_id" {
  description = "If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created"
  type        = string
  default     = null
}

