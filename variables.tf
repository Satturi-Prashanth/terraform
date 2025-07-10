variable "vpc_cidr_block" {
  description = "CIDR Block for the VPC"
  default = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  description = "CIDR Block for the Subnet1"
  default = "10.0.1.0/24"
}

variable "subnet_1_az" {
  description = "CIDR Block for Subnet1"
  default = "ap-south-1a"
}

variable "subnet_2_cidr" {
  description = "CIDR Block for the Subnet2"
  default = "10.0.2.0/24"
}

variable "subnet_2_az" {
  description = "CIDR Block for Subnet1"
  default = "ap-south-1a"
}