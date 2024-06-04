terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}
#aws stuff
provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}

variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}

variable "region" {
    type = string
    default = "us-east-1"
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.10.0.0/16"
}