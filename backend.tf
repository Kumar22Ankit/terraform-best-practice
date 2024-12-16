terraform {
  backend "s3" {
    bucket         = "terraform-cache-terrateam"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

