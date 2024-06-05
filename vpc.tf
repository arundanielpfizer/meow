provider "aws" {
    region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.20.0.0/16"
}

variable "region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "us-east-1"
}