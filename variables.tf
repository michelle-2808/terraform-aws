variable "region" {
  type    = string
  default = "ap-southeast-3"
}

variable "ami_id" {
  type    = string
  default = "ami-00ddb130737638872" # Replace with your Graviton2 AMI ID
}

variable "instance_count" {
  type = number
  default = 1 # This will be overridden in each environment
}