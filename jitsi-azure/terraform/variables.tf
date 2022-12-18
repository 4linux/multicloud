variable "location" {
  description = "Define em qual regiao a instancia sera executada"
  default = "eastus"
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
  default = "/subscriptions/77417ffb-b828-4a6b-b4a9-a18d13ac5a97/resourceGroups/multicloud/providers/Microsoft.Compute/images/imagem-modelo-jitsi-meet"
}

variable "subnet_id" {
  description = "Define o nome da subrede"
  default = "/subscriptions/77417ffb-b828-4a6b-b4a9-a18d13ac5a97/resourceGroups/multicloud/providers/Microsoft.Network/virtualNetworks/jitsi-vmnet/subnets/padrão"
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
  default = "/subscriptions/77417ffb-b828-4a6b-b4a9-a18d13ac5a97/resourceGroups/multicloud/providers/Microsoft.Network/networkSecurityGroups/jitsi-meet"
}

variable "size" {
  description = "Define o tipo de instancia"
  default = "Standard_B1s"
}

variable "user" {
  description = "Define o nome do usuario que tera acesso SSH na instancia"
  default = "azureuser"
}
