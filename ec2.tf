resource "aws_instance" "web" {
    ami = "ami-0bc8f29a8fc3184aa"
    instance_type = "t2.medium"
    key_name = "sadashiva"
    monitoring = true
    tags = {
        Name = "WebServer"
    }
  
}

resource "aws_instance" "App" {
    ami = "ami-0bc8f29a8fc3184aa"
    instance_type = "t2.small"
    key_name = "sadashiva"
    monitoring = true
    tags = {
        Name = "App-server"
    }
  
}

resource "aws_instance" "Data" {
    ami = "ami-0bc8f29a8fc3184aa"
    instance_type = "t2.medium"
    key_name = "sadashiva"
    monitoring = true
    tags = {
        Name = "Data-server"
    }
  
}
resource "aws_instance" "Data" {
    ami = "ami-0bc8f29a8fc3184aa"
    instance_type = "t2.medium"
    key_name = "sadashiva"
    monitoring = true
    tags = {
        Name = "maha-server"
    }
  
}



# Create a LoadBalancer 

resource "aws_lb" "example" {
  name = "example-load-balancer"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.example.id]
  subnets = [aws_subnet.subnet_1.id,aws_subnet.subnet_2.id]
  tags = {
    Name = "Clahan-LB"
  }
  
}

# Create a Target Group 

resource "aws_lb_target_group" "example" {
  name = "example-taget-group"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.clahan_vpc.id
  tags = {
    Name = "Clahan-Target"
  }
}

# Create a Listener 
resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.example.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.example.arn
  }
}
