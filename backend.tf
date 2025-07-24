terraform {
  backend "s3" {
    bucket         = "nameebia"
    key            = "env/dev/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-lock-table"
  }
}
