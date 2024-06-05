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

variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}
/* 
variable "region" {
    type = string
    default = "us-east-1"
}
 */