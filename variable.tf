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
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-west-2" # you can change or remove default
}

variable "public_key" {
  description = "SSH public key to be added to EC2 authorized_keys"
  type        = string
}

