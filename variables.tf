variable "ami_image" {


  type = string

  description = "This is a variable for AMI image"

}

variable "instance_type" {


  type = string

  description = "This is a variable for Instance type"

}

variable "cidr_block" {
  default = "10.0.0.0/16"
  type    = string

  description = "This is a variable for cidr block"

}

variable "cidr_block_public_subnet_ip_range" {

  default = "10.0.1.0/24"
  type    = string

  description = "This is a variable for Instance type"

}

variable "cidr_block_private_subnet_ip_range" {
  default = "10.0.2.0/24"
  type    = string

  description = "This is a variable for Instance type"

}

variable "inbound_rule" {

  type = any

}

variable "subnet" {

  type = any
}

variable "vm" {

  type = any

}