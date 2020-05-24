resource "aws_security_group" "master_security_group" {
  name        = "master_security_group"
  description = "Allow ALL inbound and outbound traffic"
  vpc_id      = "${aws_vpc.mainVPC.id}"

  ingress {
    description = "All traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ALL"
  }
}

resource "aws_security_group" "worker_security_group" {
  name        = "worker_security_group"
  description = "Allow ALL inbound and outbound traffic"
  vpc_id      = "${aws_vpc.mainVPC.id}"

  ingress {
    description = "All traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ALL"
  }
}
