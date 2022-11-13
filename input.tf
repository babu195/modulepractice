variable "aws_region" {
    type = string
    description = "aws region selected for oregan"
    default = "us-west-2"
}

variable "module_name" {
    type = string
    description = "module name has been created"
    default = "hplapi"
}

variable "module_cidr" {
    type = string
    description = "module cidr haas been creating"
    default = "192.168.0.0/16"
}

variable "private_subnets" {
    type = list(string)
}

variable "public_subnets" {
    type = list(string)
}

variable "ami_id" {
    type = string
    description = "ami id pasted of ubuntu 22.04"
    default = "ami-017fecd1353bcc96e"
  
}

variable "web_trriger" {
    type = string
    description = "trriger has been created to stop dulicacy"
    default = "1.0"
}