terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  
      region  = var.region
    }
  }
}


resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c" 
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

