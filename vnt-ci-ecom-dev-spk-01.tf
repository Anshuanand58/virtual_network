#------------------------------------------
# Module for Vnet
#------------------------------------------
module "test-vnet" {
  source                = "vnet.tf"
  create_resource_group = false
  resource_group_name   = var.resource_group_name
  location              = var.location
  address_space = {
    "vnet1" = {
      name          = "test-vnet"
      address_space = ["10.15.16.0/23"]
    },
  }
  subnet_prefixes = {
    "subnet1" = {
      name                          = "test-vnet"
      rt_name                       = "test-vnet"
      address_prefixes              = ["10.15.16.224/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    
  }
  tags = {
    owner = "Anshu Anand"
  }
}
