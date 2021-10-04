variable "credentials" {
  description = "Define as credenciais do projeto na GCP"
  default = "/home/suporte-gcp/.config/gcloud/legacy_credentials/suportemulticloudgcp@gmail.com/adc.json"
}

variable "project" {
  description = "Define em qual projeto a instancia sera executada"
  default = "multicloud-326811"
}
variable "region" {
  description = "Define em qual zona a instancia sera executada"
  default = "southamerica-east1"
}

variable "name" {
  description = "Define o nome da instancia Web"
  default = "webserver-wordpress-terraform"
}

variable "image" {
  description = "Define o nome da imagem modelo para o servidor Web do Wordpress"
  default = "imagem-modelo-wordpress-webserver"
}

variable "machine_type" {
  description = "Define o tipo de Instancia na GCP"
  default = "e2-small"
}

variable "zone" {
  description = "Define a zona da Instancia na GCP"
  default = "southamerica-east1-c"
}

variable "network" {
  description = "Define o nome da da rede VPC"
  default = "wordpress-vpc"
}
