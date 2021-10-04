variable "region" {
  description = "Define em qual regiao a instancia sera executada"
  default = "sa-east-1"
}

variable "name" {
  description = "Define o nome da instancia"
  default = "webserver-moodle-terraform"
}

variable "ami" {
  description = "Define o ID da imagem modelo para o servidor Web do Moodle"
  default = "ami-05e809fbeee38dd5e"
}

variable "instance_type" {
  description = "Define o tipo de Instancia na AWS"
  default = "t2.micro"
}

variable "subnet_id" {
  description = "Define o ID da subrede VPC"
  default = "subnet-0e64393a88bb3ecb4"
}

variable "vpc_security_group_ids" {
  description = "Define o ID do grupo de seguranca da Instancia Web"
  default = "sg-045138022bca81f5a"
}

variable "key_name" {
  description = "Define o nome da chave de acesso SSH"
  default = "chave-aws-multicloud"
}
