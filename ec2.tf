resource "aws_instance" "web" {
    ami = "ami-07ebc46e9d014b560"
    instance_type = "t2.medium"
    key_name = "public-k8s"
    monitoring = true
    tags = {
        Name = "WebServer"
    }
  
}