provider "aws" {
    region = "ap-northeast-1"
  
}

# create a VPC 
resource "aws_vpc" "clahan_vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true 
  enable_dns_hostnames = true 
  instance_tenancy = "default"
  tags = {
    Name = "Clahan-VPC"
  }
}

# Create a Subnet1 - Public 
resource "aws_subnet" "subnet_1" {
  vpc_id = aws_vpc.clahan_vpc.id
  cidr_block = var.subnet_1_cidr
  availability_zone = var.subnet_1_az
  map_public_ip_on_launch = true
  tags = {
    Name = "Clahan-Subnet-Public"
  }
}

# Create a Subnet2 - Private 
resource "aws_subnet" "subnet_2" {
  vpc_id = aws_vpc.clahan_vpc.id
  cidr_block = var.subnet_2_cidr
  availability_zone = var.subnet_2_az
  map_public_ip_on_launch = false
  tags = {
    Name = "Clahan-Subnet-Private"
  }
}

# Create Internete Gateway 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.clahan_vpc.id
  tags = {
    Name = "Clahan-IGW"
  }
}

# Create a Security Group within the VPC 
resource "aws_security_group" "example" {
  name = "example-loadbalancer-sg"
  description = "Security Group for the LoadBalancer"
  vpc_id = aws_vpc.clahan_vpc.id
  tags = {
    Name = "Clahan-SG"
  }

  ingress {
    description = "Allow Inbound Traffic on Port 80"
    from_port = 80
    to_port = 80 
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description= "Allow outbound traffic on all ports"
    from_port = 0
    to_port = 0 
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
