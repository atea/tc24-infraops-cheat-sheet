  module "windowsservers" {
    source              = "Azure/vm/azurerm"
    location            = "norwayeast"
    vm_hostname         = "mywinvm" // line can be removed if only one VM module per resource group
    admin_password      = "ComplxP@ssw0rd!"
    vm_os_simple        = "WindowsServer"
    public_ip_dns       = ["winsimplevmips"] // change to a unique name per datacenter region
    vnet_subnet_id      = "${module.vnet.vnet_subnets[0]}"
  }