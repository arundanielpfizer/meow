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
    region = "us-east-1"
}

variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}

variable "region" {
    type = string
    default = "<%=customOptions.awsRegion%>"
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.10.0.0/16"
}