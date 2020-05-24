resource "aws_subnet" "public_subnet1" {
  vpc_id     = "${aws_vpc.mainVPC.id}"
  cidr_block = var.PUP_SUB1_CIDR

  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id     = "${aws_vpc.mainVPC.id}"
  cidr_block = var.PUP_SUB2_CIDR

  tags = {
    Name = "public_subnet_2"
  }
}