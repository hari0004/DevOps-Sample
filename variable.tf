variable "region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for SSH"
  default     = "Docker"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04 LTS"
  default     = "ami-044415bb13eee2391" # update per region
}
