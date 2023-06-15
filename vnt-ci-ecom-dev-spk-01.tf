#------------------------------------------
# Module for Vnet
#------------------------------------------
module "vnt-ci-ecom-dev-spk-01" {
  source                = "git::https://xkmjl6xcuanap5betn3m43lagh5y6llpn6lq5bqfpaxep7cynvca@dev.azure.com/IRL-INFRA-DEVOPS/IRL-MODULES/_git/IRL-MODULES//azurerm_virtual_network?ref=v1.1"
  create_resource_group = false
  resource_group_name   = var.resource_group_name
  location              = var.location
  address_space = {
    "vnet1" = {
      name          = "ci-ecom-dev-spk-01"
      address_space = ["10.15.16.0/23", "10.15.28.0/23", "10.15.62.0/23", "10.15.64.0/23"]
    },
  }
  subnet_prefixes = {
    "subnet1" = {
      name                          = "ci-ecom-dev-ibg-api-01"
      rt_name                       = "ci-ecom-dev-ibg-api-01"
      address_prefixes              = ["10.15.17.224/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet2" = {
      name                          = "ci-ecom-dev-hyb-app-01"
      rt_name                       = "ci-ecom-dev-hyb-app-01"
      address_prefixes              = ["10.15.16.0/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet3" = {
      name                          = "ci-ecom-dev-hyb-db-01"
      rt_name                       = "ci-ecom-dev-hyb-db-01"
      address_prefixes              = ["10.15.16.128/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet4" = {
      name                          = "ci-ecom-dev-ibg-aks-01"
      rt_name                       = "ci-ecom-dev-ibg-aks-01"
      address_prefixes              = ["10.15.16.224/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet5" = {
      name                          = "ci-ecom-dev-hyb-web-01"
      rt_name                       = "ci-ecom-dev-hyb-web-01"
      address_prefixes              = ["10.15.16.64/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet6" = {
      name                          = "ci-ecom-dev-hyb-apim-01"
      rt_name                       = "ci-ecom-dev2-hyb-apim"
      address_prefixes              = ["10.15.16.96/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet7" = {
      name                          = "ci-ecom-dev-tms-app-01"
      rt_name                       = "ci-ecom-dev-tms-app-01"
      address_prefixes              = ["10.15.16.160/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet8" = {
      name                          = "ci-ecom-dev-tms-db-01"
      rt_name                       = "ci-ecom-dev-tms-db-01"
      address_prefixes              = ["10.15.16.184/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet9" = {
      name                          = "ci-ecom-dev-tms-web-01"
      rt_name                       = "ci-ecom-dev-tms-web-01"
      address_prefixes              = ["10.15.16.168/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet10" = {
      name                          = "ci-ecom-dev-tms-cgs-01"
      rt_name                       = "ci-ecom-dev-tms-cgs-01"
      address_prefixes              = ["10.15.16.176/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet11" = {
      name                          = "ci-ecom-dev-oms-app-01"
      rt_name                       = "ci-ecom-dev-oms-app-01"
      address_prefixes              = ["10.15.16.48/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet12" = {
      name                          = "ci-ecom-dev-oms-db-01"
      rt_name                       = "ci-ecom-dev-oms-db-01"
      address_prefixes              = ["10.15.16.112/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet13" = {
      name                          = "ci-ecom-dev-oms-mq-01"
      rt_name                       = "ci-ecom-dev-oms-mq-01"
      address_prefixes              = ["10.15.17.16/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet14" = {
      name                          = "ci-ecom-dev-oms-web-01"
      rt_name                       = "ci-ecom-dev-oms-web-01"
      address_prefixes              = ["10.15.17.32/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet15" = {
      name                          = "ci-ecom-dev-hyb-apim-02"
      rt_name                       = "ci-ecom-dev3-hyb-apim"
      address_prefixes              = ["10.15.17.48/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet16" = {
      name                          = "ci-ecom-dev-att-app-01"
      rt_name                       = "ci-ecom-dev-att-app-01"
      address_prefixes              = ["10.15.17.144/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet17" = {
      name                          = "ci-ecom-dev-ew-aks-01"
      rt_name                       = "ci-ecom-dev-ew-aks-01"
      address_prefixes              = ["10.15.28.32/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet18" = {
      name                          = "ci-ecom-dev-ibg-aks-02"
      rt_name                       = "ci-ecom-dev-ibg-aks-02"
      address_prefixes              = ["10.15.17.192/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet19" = {
      name                          = "ci-ecom-dev-hyb-apim-03"
      rt_name                       = "ci-ecom-dev-hyb-apim-03"
      address_prefixes              = ["10.15.16.104/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet20" = {
      name                          = "ci-ecom-dev-red-pep-01"
      rt_name                       = "ci-ecom-dev-red-pep-01"
      address_prefixes              = ["10.15.17.56/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet21" = {
      name                          = "ci-ecom-dev-inc-aks-01"
      rt_name                       = "ci-ecom-dev-inc-aks-01"
      address_prefixes              = ["10.15.28.0/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet22" = {
      name                          = "ci-ecom-dev-sch-aks-01"
      rt_name                       = "ci-ecom-dev-sch-aks-01"
      address_prefixes              = ["10.15.29.16/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet23" = {
      name                          = "ci-ecom-dev-ibg-aks-03"
      rt_name                       = "ci-ecom-dev-ibg-aks-03"
      address_prefixes              = ["10.15.16.192/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet24" = {
      name                          = "ci-ecom-dev-ois-pep-01"
      rt_name                       = "ci-ecom-dev-ois-pep-01"
      address_prefixes              = ["10.15.29.80/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet25" = {
      name                          = "ci-ecom-dev-hyb-apim-04"
      rt_name                       = "ci-ecom-dev4-hyb-apim"
      address_prefixes              = ["10.15.29.88/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet26" = {
      name                          = "ci-ecom-dev-aex-app-01"
      rt_name                       = "ci-ecom-dev-aex-app-01"
      address_prefixes              = ["10.15.29.96/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet27" = {
      name                          = "ci-ecom-dev-hyb-apim-05"
      rt_name                       = "ci-ecom-dev6-hyb-apim"
      address_prefixes              = ["10.15.29.120/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet28" = {
      name                          = "ci-ecom-dev-hyb-apim-06"
      rt_name                       = "ci-ecom-dev5-hyb-apim"
      address_prefixes              = ["10.15.29.112/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet29" = {
      name                          = "ci-ecom-dev-hyb-apim-07"
      rt_name                       = "ci-ecom-dev0-hyb-apim"
      address_prefixes              = ["10.15.29.128/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet30" = {
      name                          = "ci-ecom-dev-hyb-apim-08"
      rt_name                       = "ci-ecom-dev8-hyb-apim"
      address_prefixes              = ["10.15.29.136/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet31" = {
      name                          = "ci-ecom-dev-hyb-apim-09"
      rt_name                       = "ci-ecom-dev-hyb-apim-09"
      address_prefixes              = ["10.15.29.144/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet32" = {
      name                          = "ci-ecom-dev-hyb-apim-10"
      rt_name                       = "ci-ecom-dev11-hyb-apim"
      address_prefixes              = ["10.15.29.224/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet33" = {
      name                          = "ci-ecom-dev-hyb-apim-11"
      rt_name                       = "ci-ecom-dev10-hyb-apim"
      address_prefixes              = ["10.15.29.240/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet34" = {
      name                          = "ci-ecom-dev-hyb-apim-12"
      rt_name                       = "ci-ecom-dev9-hyb-apim"
      address_prefixes              = ["10.15.29.208/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet35" = {
      name                          = "ci-ecom-dev-hyb-apim-13"
      rt_name                       = "ci-ecom-dev12-hyb-apim"
      address_prefixes              = ["10.15.29.216/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet36" = {
      name                          = "ci-ecom-dev-hyb-apim-14"
      rt_name                       = "ci-ecom-dev13-hyb-apim"
      address_prefixes              = ["10.15.62.64/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet37" = {
      name                          = "ci-ecom-dev-hyb-apim-15"
      rt_name                       = "ci-ecom-dev14-hyb-apim"
      address_prefixes              = ["10.15.62.72/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet38" = {
      name                          = "ci-ecom-dev-hyb-apim-16"
      rt_name                       = "ci-ecom-dev15-hyb-apim"
      address_prefixes              = ["10.15.62.80/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet39" = {
      name                          = "ci-ecom-dev-hyb-apim-17"
      rt_name                       = "ci-ecom-dev16-hyb-apim"
      address_prefixes              = ["10.15.29.248/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet40" = {
      name                          = "ci-ecom-dev-neo-app-01"
      rt_name                       = "ci-ecom-dev-neo-app-01"
      address_prefixes              = ["10.15.17.128/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet41" = {
      name                          = "ci-ecom-dev-neo-app-02"
      rt_name                       = "ci-ecom-dev-neo-app-02"
      address_prefixes              = ["10.15.28.192/26"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet42" = {
      name                          = "ci-ecom-dev-neo-app-03"
      rt_name                       = "ci-ecom-dev-neo-app-03"
      address_prefixes              = ["10.15.17.0/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet43" = {
      name                          = "ci-ecom-dev-neo-app-04"
      rt_name                       = "ci-ecom-dev-neo-app-04"
      address_prefixes              = ["10.15.29.160/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet44" = {
      name                          = "ci-ecom-dev-exh-aks-01"
      rt_name                       = "ci-ecom-dev-exh-aks-01"
      address_prefixes              = ["10.15.29.192/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet45" = {
      name                          = "ci-ecom-dev-cis-sta-pep-01"
      rt_name                       = "ci-ecom-dev-cis-sta-pep-01"
      address_prefixes              = ["10.15.29.0/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet46" = {
      name                          = "ci-ecom-dev-ord-aks-01"
      rt_name                       = "ci-ecom-dev-ord-aks-01"
      address_prefixes              = ["10.15.62.0/26"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet47" = {
      name                          = "ci-ecom-dev-hyb-app-02"
      rt_name                       = "ci-ecom-dev-hyb-app-02"
      address_prefixes              = ["10.15.62.96/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet48" = {
      name                          = "ci-ecom-dev-jup-app-01"
      rt_name                       = "ci-ecom-dev-jup-app-01"
      address_prefixes              = ["10.15.29.8/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet49" = {
      name                          = "ci-ecom-dev-prc-aks-01"
      rt_name                       = "ci-ecom-dev-prc-aks-01"
      address_prefixes              = ["10.15.62.128/26"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet50" = {
      name                          = "ci-ecom-dev-cic-pep-01"
      rt_name                       = "ci-ecom-dev-cic-pep-01"
      address_prefixes              = ["10.15.16.32/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet51" = {
      name                          = "ci-ecom-dev-rom-aks-01"
      rt_name                       = "ci-ecom-dev-rom-aks-01"
      address_prefixes              = ["10.15.63.0/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet52" = {
      name                          = "ci-ecom-dev-inc-aks-02"
      rt_name                       = "ci-ecom-dev-inc-aks-02"
      address_prefixes              = ["10.15.17.160/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet53" = {
      name                          = "ci-ecom-dev-ew-aks-02"
      rt_name                       = "ci-ecom-dev-ew-aks-02"
      address_prefixes              = ["10.15.17.96/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet54" = {
      name                          = "ci-ecom-dev-ew-aks-03"
      rt_name                       = "ci-ecom-dev-ew-aks-03"
      address_prefixes              = ["10.15.63.32/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet55" = {
      name                          = "ci-ecom-dev-inc-aks-03"
      rt_name                       = "ci-ecom-dev-inc-aks-03"
      address_prefixes              = ["10.15.63.64/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet56" = {
      name                          = "ci-ecom-dev-dm-pep-01"
      rt_name                       = "ci-ecom-dev-dm-pep-01"
      address_prefixes              = ["10.15.29.152/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet57" = {
      name                          = "ci-ecom-dev-hyb-app-03"
      rt_name                       = "ci-ecom-dev-hyb-app-03"
      address_prefixes              = ["10.15.29.48/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet58" = {
      name                          = "ci-ecom-dev-crt-aks-01"
      rt_name                       = "ci-ecom-dev-crt-aks-01"
      address_prefixes              = ["10.15.62.192/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet59" = {
      name                          = "ci-ecom-dev-bil-aks-01"
      rt_name                       = "ci-ecom-dev-bil-aks-01"
      address_prefixes              = ["10.15.63.160/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet60" = {
      name                          = "ci-ecom-dev-pms-pep-01"
      rt_name                       = "ci-ecom-dev-pms-pep-01"
      address_prefixes              = ["10.15.63.192/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet61" = {
      name                          = "ci-ecom-dev-zuc-aks-01"
      rt_name                       = "ci-ecom-dev-zuc-aks-01"
      address_prefixes              = ["10.15.29.32/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet62" = {
      name                          = "ci-ecom-dev-bil-mon-pep-01"
      rt_name                       = "ci-ecom-dev-bil-mon-pep-01"
      address_prefixes              = ["10.15.63.200/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet63" = {
      name                          = "ci-ecom-dev-cat-aks-01"
      rt_name                       = "ci-ecom-dev-cat-aks-01"
      address_prefixes              = ["10.15.63.128/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet64" = {
      name                          = "ci-ecom-dev-cis-api-01"
      rt_name                       = "ci-ecom-dev-cis-api-01"
      address_prefixes              = ["10.15.63.208/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = true
    },
    "subnet65" = {
      name                          = "ci-ecom-dev-zuc-pep-01"
      rt_name                       = "ci-ecom-dev-zuc-pep-01"
      address_prefixes              = ["10.15.63.216/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet66" = {
      name                          = "ci-ecom-dev-ord-aks-02"
      rt_name                       = "ci-ecom-dev-ord-aks-02"
      address_prefixes              = ["10.15.63.96/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet67" = {
      name                          = "ci-ecom-dev-atc-aks-01"
      rt_name                       = "ci-ecom-dev-atc-aks-01"
      address_prefixes              = ["10.15.29.64/28"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet68" = {
      name                          = "ci-ecom-dev-vdr-aks-01"
      rt_name                       = "ci-ecom-dev-vdr-aks-01"
      address_prefixes              = ["10.15.17.64/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet69" = {
      name                          = "ci-ecom-dev-aml-alt-01"
      rt_name                       = "ci-ecom-dev-aml-alt-01"
      address_prefixes              = ["10.15.63.224/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet70" = {
      name                          = "ci-ecom-dev-bnf-mon-pep-01"
      rt_name                       = "ci-ecom-dev-bnf-mon-pep-01"
      address_prefixes              = ["10.15.29.232/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet71" = {
      name                          = "ci-ecom-dev-cis-pep-01"
      rt_name                       = "ci-ecom-dev-cis-pep-01"
      address_prefixes              = ["10.15.64.0/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet72" = {
      name                          = "ci-ecom-dev-crt-cdb-pep-01"
      rt_name                       = "ci-ecom-dev-crt-cdb-pep-01"
      address_prefixes              = ["10.15.64.16/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet73" = {
      name                          = "ci-ecom-dev-zuc-aps-01"
      rt_name                       = "ci-ecom-dev-zuc-aps-01"
      address_prefixes              = ["10.15.64.32/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet74" = {
      name                          = "ci-ecom-dev-pms-pa-01"
      rt_name                       = "ci-ecom-dev-pms-pa-01"
      address_prefixes              = ["10.15.64.8/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet75" = {
      name                          = "ci-ecom-dev-inv-aks-01"
      rt_name                       = "ci-ecom-dev-inv-aks-01"
      address_prefixes              = ["10.15.64.64/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = true
    },
    "subnet76" = {
      name                          = "ci-ecom-dev-inv-mon-pep-01"
      rt_name                       = "ci-ecom-dev-inv-mon-pep-01"
      address_prefixes              = ["10.15.64.24/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet77" = {
      name                          = "ci-ecom-dev-elk-ap-01"
      rt_name                       = "ci-ecom-dev-elk-ap-01"
      address_prefixes              = ["10.15.62.88/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet78" = {
      name                          = "ci-ecom-dev-swv-wap-01"
      rt_name                       = "ci-ecom-dev-swv-wap-01"
      address_prefixes              = ["10.15.64.96/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet79" = {
      name                          = "ci-ecom-dev-ew-mon-pep-01"
      rt_name                       = "ci-ecom-dev-ew-mon-pep-01"
      address_prefixes              = ["10.15.64.104/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet80" = {
      name                          = "ci-ecom-dev-pms-aks-01"
      rt_name                       = "ci-ecom-dev-pms-aks-01"
      address_prefixes              = ["10.15.62.224/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet81" = {
      name                          = "ci-ecom-dev-ewlrs01-pep-01"
      rt_name                       = "ci-ecom-dev-ewlrs01-pep-01"
      address_prefixes              = ["10.15.64.112/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet82" = {
      name                          = "ci-ecom-dev-avd-avm-01"
      rt_name                       = "ci-ecom-dev-avd-avm-01"
      address_prefixes              = ["10.15.64.128/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet83" = {
      name                          = "ci-analytics-dev-alt-dbw-pub-01"
      rt_name                       = "ci-analytics-dev-alt-dbw-pub-01"
      address_prefixes              = ["10.15.65.0/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet84" = {
      name                          = "ci-analytics-dev-alt-dbw-pvt-01"
      rt_name                       = "ci-analytics-dev-alt-dbw-pvt-01"
      address_prefixes              = ["10.15.65.32/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet85" = {
      name                          = "ci-analytics-dev-alt-dbw-pvt-02"
      rt_name                       = "ci-analytics-dev-alt-dbw-pvt-02"
      address_prefixes              = ["10.15.28.128/26"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet86" = {
      name                          = "ci-analytics-dev-alt-dbw-pub-02"
      rt_name                       = "ci-analytics-dev-alt-dbw-pub-02"
      address_prefixes              = ["10.15.28.64/26"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet87" = {
      name                          = "ci-analytics-dev-afa-to-sb-01"
      rt_name                       = "ci-analytics-dev-afa-to-sb-01"
      address_prefixes              = ["10.15.64.192/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet88" = {
      name                          = "ci-ecom-dev-pms-mon-pep-01"
      rt_name                       = "ci-ecom-dev-pms-mon-pep-01"
      address_prefixes              = ["10.15.64.120/29"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
    },
    "subnet89" = {
      name                          = "ci-ecom-dev-dm-aps-01"
      address_prefixes              = ["10.15.65.64/27"]
      skey                          = "vnet1"
      disable_bgp_route_propagation = false
      rt_name                       = "ci-ecom-dev-dm-aps-01"
    },
  }
  tags = {
    tower              = "Ecom"
    application        = "shared service"
    environment        = "dev"
    IRL-business-owner = "Rajdeep Dutta"
  }
}
