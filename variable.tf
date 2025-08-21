# variables.tf
variable "region" {
  default = "eu-west-2"
}

# provider.tf
provider "aws" {
  region = var.region
}
