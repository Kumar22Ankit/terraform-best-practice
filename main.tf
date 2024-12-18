terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c" 
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

