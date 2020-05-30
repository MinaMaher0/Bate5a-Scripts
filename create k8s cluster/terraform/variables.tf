variable "VPC_CIDR" {
  type    = string
  default = "10.0.0.0/16"
}

variable "PUP_SUB1_CIDR" {
  type    = string
  default = "10.0.0.0/24"
}

variable "PUP_SUB2_CIDR" {
  type    = string
  default = "10.0.1.0/24"
}

variable "instance_ami" {
  type = string
  default = "ami-085925f297f89fce1"
}

variable "master_instance_type" {
  type = string
}
variable "worker_instance_type" {
  type = string
}