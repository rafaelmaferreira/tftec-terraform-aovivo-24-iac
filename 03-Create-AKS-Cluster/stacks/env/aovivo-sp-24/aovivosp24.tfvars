#01 - Global Vars
location  = "uksouth"
cx_prefix = "aks-labs"
global_tags = {
  "nome do aplicativo" = "labs"
  "centro de custo"    = "aks"
  "nome do aprovador"  = "Rafael Ferreira"
}


#02 - RGs Vars
aks_resource_group_name       = "kubernetes"
analytics_resource_group_name = "analytics"


#03 - VNET Vars
vnet_name                = "vnet-web"
vnet_resource_group_name = "rg-vnet"
snet_name                = "sub-aks02"


#04 - AKS Vars
# Cluster Configuration
aks_code        = "001"
cluster_name    = "aks-labs"
sku_tier        = "Free"
aks_k8s_version = "1.30.0"
aks_tags = {
  "nome do aplicativo" = "labs"
  "centro de custo"    = "aks"
  "nome do aprovador"  = "Rafael Ferreira"
}
# Default Node Configuration
name_pool             = "systempool"
os_sku                = "AzureLinux"
aks_node_av_zone      = ["1", "2", "3"]
agents_type           = "VirtualMachineScaleSets"
vm_size               = "Standard_D2_v2"
auto_scaling_enabled  = true
aks_max_pods          = 30
aks_node_vm_disk_size = 200
ultra_ssd_enabled     = false
aks_default_node_settings = {
  node_count = 1
  min_count  = 1
  max_count  = 3
}
# Additional Node Configuration
aks_node_name = "default"
aks_additional_node_pools = {
  application_node_pool_1 = {
    additional_node_name           = "apppool"
    node_os                        = "Linux"
    node_os_sku                    = "AzureLinux"
    vm_size                        = "Standard_D2_v2"
    os_disk_size                   = 200
    max_pods                       = 50
    zones                          = ["1", "2", "3"]
    cluster_auto_scaling           = true
    cluster_auto_scaling_min_count = 1
    cluster_auto_scaling_max_count = 10
    enable_public_ip               = false
    node_count                     = 2
  }
}
# Identity Configuration
aks_enable_attach_acr   = true
aks_is_identity_enabled = true
# Network Configuration
network_plugin                   = "azure"
default_aks_network_cidr         = "11.0.0.0/22"
default_aks_dns_ip               = "11.0.0.10"
dns_prefix                       = "aks-labs"
lb_sku                           = "standard"
http_application_routing_enabled = false
private_cluster_enabled          = true
network_policy                   = "azure"
# Integrations Configuration
azure_policy_enabled       = true
microsoft_defender_enabled = false
## ACR Vars
acr_name         = "acr-aks-labs"
acr_enable_admin = true
acr_tags = {
  "nome do aplicativo" = "labs"
  "centro de custo"    = "aks"
  "nome do aprovador"  = "Rafael Ferreira"
}
## LOG Vars
log_analytics_workspace_name = "law-aks-labs"
log_retention_in_days        = 30
wks_log_tags = {
  "nome do aplicativo" = "labs"
  "centro de custo"    = "aks"
  "nome do aprovador"  = "Rafael Ferreira"
}