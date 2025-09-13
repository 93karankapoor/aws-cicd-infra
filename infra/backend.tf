terraform {
  required_version = ">= 1.5.0"
  backend "s3" {
    bucket         = "my-company-terraform-state-prod-v1"
    key            = "prod/infra/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}