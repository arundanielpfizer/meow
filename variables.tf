variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-2"  # Replace with your desired region
}

variable "access_key" {
  description = "The AWS access key"
  type        = string
}

variable "secret_key" {
  description = "The AWS secret key"
  type        = string
  sensitive   = true
}
