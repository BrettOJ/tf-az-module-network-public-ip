
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

variable "fqdn" {
  description = "Reverse FQDN "
  type        = string
  default     = null
}

variable "reverse_fqdn" {
  description = "Reverse FQDN "
  type        = string
  default     = null
}

variable "ddos_protection_mode" {
  description = "The DDoS protection mode. Valid values are Basic and Standard."
  type        = string
  default     = null
}

variable "ddos_protection_plan_id" {
  description = "The ID of the DDoS protection plan."
  type        = string
  default     = null
}

variable "edge_zone" {
  description = "The edge zone for the public IP address."
  type        = string
  default     = null
}

variable "ip_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}

variable "ip_version" {
  description = "The IP Version to use, IPv6 or IPv4."
  type        = string
  default     = "IPv4"
}

variable "idle_timeout_in_minutes" {
  description = "The timeout for the TCP idle connection."
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
