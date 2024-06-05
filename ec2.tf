terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
}

#aws stuff
provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_instance" "example" {
  ami           = "ami-00beae93a2d981137"
  instance_type = "t2.micro"
}
