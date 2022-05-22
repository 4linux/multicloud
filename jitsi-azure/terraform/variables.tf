variable "location" {
  description = "Define em qual regiao a instancia sera executada"
  default = "southeastasia"
}

variable "resource_group_name" {
  description = "Define o nome do grupo de recurso"
  default = "multicloud"
}

variable "name_vm" {
  description = "Define o nome da instancia"
  default = "jitsi-meet-azure-terraform"
}

variable "image_id" {
  description = "Define o id da imagem modelo"
  default = "/subscriptions/0009f13e-68f4-4cae-8cb2-9e26239157a1/resourceGroups/multicloud/providers/Microsoft.Compute/images/imagem-modelo-jitsi-meet"
}

variable "subnet_id" {
  description = "Define o nome da subrede"
  default = "/subscriptions/0009f13e-68f4-4cae-8cb2-9e26239157a1/resourceGroups/multicloud/providers/Microsoft.Network/virtualNetworks/jitsi-vmnet/subnets/default"
}

variable "name_ip" {
  description = "Define o nome do endereco publico"
  default = "jitsi-public-ip"
}

variable "name_nic" {
  description = "Define o nome da interface de rede"
  default = "jitsi-nic"
}

variable "name_ip_configuration" {
  description = "Define o nome da interface de rede"
  default = "jitsi-configuration"
}

variable "network_security_group_id_meet" {
  description = "Define o nome do grupo de seguranca jitsi-meet"
  default = "/subscriptions/0009f13e-68f4-4cae-8cb2-9e26239157a1/resourceGroups/multicloud/providers/Microsoft.Network/networkSecurityGroups/jitsi-meet"
}

variable "size" {
  description = "Define o tipo de instancia"
  default = "Standard_DC1ds_v3"
}

variable "user" {
  description = "Define o nome do usuario que tera acesso SSH na instancia"
  default = "azureuser"
}
