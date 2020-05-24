resource "aws_vpc" "mainVPC" {
  cidr_block       = var.VPC_CIDR

  tags = {
    Name = "k8s-vpc"
  }
}

