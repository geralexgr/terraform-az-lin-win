# terraform-az-lin-win
Provision windows and linux resources with terraform on Azure


## Getting started

First install `az cli ` as it will be needed for the connection with the Azure subscription. You will need to find your subscription ID either from Azure portal or by pressing `az login` and proceeding through a browser.

Then you will need to create an app role assignment on your subscription which can be done with:

`az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/ID_HERE"`


## Terraform deploy

Then you can deploy your resources by navigation on windows or linux folder.

``` 
cd windows // cd linux
terraform init
terraform apply
```

If you need to deprovision your environment use:

`terraform destroy`

## Configuration

Most of the variables are defined onterraform.tfvars. For example you may need to change the administrator password or the vm hostname. You can also change the resource group name and resources name. Change those variables according to your naming structure. The azure vm image can be changed on the windows and linux tf files accordingly.

```
resource_group_name         = "tf_infra_rg"
resource_group_location     = "West Europe"
virtual_network_name        = "tf_infra_network"
subnet_name                 = "tf_infra_subnet"
linux_public_ip_name        = "terra_lin_ip"
network_security_group_name = "terra_infra_connect_nsg"
network_interface_name      = "terra_infra_vm_nic"
linux_virtual_machine_name  = "linuxvm"
environment                  = "production"
vm_size                      = "Standard_D2s_v5"
vm_username                  = "azuredevops"
vm_hostname                  = "mainbox"
vm_password                  = "Azuredevops123!"

```