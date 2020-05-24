resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.mainVPC.id}"

  tags = {
    Name = "igw"
  }
}

resource "aws_route_table" "main_route_table" {
  vpc_id = "${aws_vpc.mainVPC.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "main route table"
  }
}

resource "aws_default_route_table" "r" {
  default_route_table_id = "${aws_vpc.mainVPC.default_route_table_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "default table"
  }
}

resource "aws_route_table_association" "associate_pup1" {
  subnet_id      = "${aws_subnet.public_subnet1.id}"
  route_table_id = "${aws_route_table.main_route_table.id}"
}

resource "aws_route_table_association" "associate_pup2" {
  subnet_id      = "${aws_subnet.public_subnet2.id}"
  route_table_id = "${aws_route_table.main_route_table.id}"
}

