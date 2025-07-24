terraform {
  backend "s3" {
    bucket         = "nameebia-bucket"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}
