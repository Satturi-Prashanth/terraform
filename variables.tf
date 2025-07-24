variable "vpc_cidr_block" {
  description = "CIDR Block for the VPC"
  default = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  description = "CIDR Block for the Subnet1"
  default = "10.0.1.0/24"
}

variable "subnet_1_az" {
  description = "availability zone for Subnet1"
  default = "ap-northeast-1a"
}

variable "subnet_2_cidr" {
  description = "cidr block for the Subnet2"
  default = "10.0.2.0/24"
}

variable "subnet_2_az" {
  description = "availability zone for the Subnet2"
  default = "ap-northeast-1c"
}

variable "subnet_3_cidr" {
  description = "CIDR Block for the Subnet3"
  default = "10.0.3.0/24"
}

variable "subnet_3_az" {
  description = "availability zone for the Subnet3"
  default = "ap-northeast-1d"
}

variable "subnet_4_cidr" {
  description = "CIDR Block for the Subnet4"
  default = "10.0.4.0/24"
}

variable "subnet_4_az" {
  description = "availability zone for the Subnet3"
  default = "ap-northeast-1d"
}







