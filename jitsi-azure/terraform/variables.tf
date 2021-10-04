variable "location" {
  description = "Define em qual regiao a instancia sera executada"
  default = "brazilsouth"
}

variable "resource_group_name" {
  description = "Define o nome do grupo de recurso"
  default = "jitsi"
}

variable "name_vm" {
  description = "Define o nome da instancia"
  default = "jitsi-meet-azure-terraform"
}

variable "subnet_id" {
  description = "Define o nome da subrede"
  default = "/subscriptions/51e3f409-d738-40cc-898b-0cff5cdf4142/resourceGroups/jitsi/providers/Microsoft.Network/virtualNetworks/jitsi-network/subnets/default"
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
  default = "/subscriptions/51e3f409-d738-40cc-898b-0cff5cdf4142/resourceGroups/jitsi/providers/Microsoft.Network/networkSecurityGroups/jitsi-meet"
}

variable "size" {
  description = "Define o tipo de instancia"
  default = "Standard_DS1_v2"
}

variable "user" {
  description = "Define o nome do usuario que tera acesso SSH na instancia"
  default = "suporte-azure"
}
