variable "address_space" {
  type = map(object({
    address_space = list(string)
    name          = string
  }))
  description = "The address space that is used by the virtual network."
}

variable "tags" {
  description = "The tags to associate with resources"
  type        = any
  default = {
    environment = "test"
  }
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type = map(object({
    address_prefixes              = list(string)
    disable_bgp_route_propagation = bool
    name                          = string
    skey                          = string
  }))
}
variable "location" {
  description = "location of vnets"
  type        = string
  default     = "eastus"
}

variable "create_resource_group" {
  description = "location of vnets"
  type        = bool
  default     = false
}

variable "resource_group_name" {
  description = "location of vnets"
  type        = string
  default     = "test-rg"
}
