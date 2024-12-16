terraform {
required_version = ">= 1.5.0"
  backend "s3" {
    bucket         = "terraform-cache-terrateam"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

