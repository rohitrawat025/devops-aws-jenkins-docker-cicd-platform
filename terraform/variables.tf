variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "ami_id" {
  description = "Ubuntu 24.04 LTS AMI ID for ap-south-1"
  default     = "ami-0dee22c13ea7a9a67"
}

variable "instance_type" {
  default = "t3.small"
}

variable "key_name" {
  default = "rohit-ec2-key"
}
