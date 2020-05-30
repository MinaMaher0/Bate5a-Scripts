resource "aws_instance" "master_node" {
  ami           = var.instance_ami
  instance_type = var.master_instance_type
  key_name  = "${aws_key_pair.me5a-key.key_name}"
  security_groups = ["${aws_security_group.master_security_group.id}"]
  associate_public_ip_address = true
  subnet_id = "${aws_subnet.public_subnet1.id}"
  root_block_device {
    volume_size = 15
  } 
  tags = {
    Name = "master"
  }
}

resource "aws_instance" "worker_node1" {
  ami           = var.instance_ami
  instance_type = var.worker_instance_type
  key_name  = "${aws_key_pair.me5a-key.key_name}"
  security_groups = ["${aws_security_group.worker_security_group.id}"]
  associate_public_ip_address = true
  subnet_id = "${aws_subnet.public_subnet1.id}"
  root_block_device {
    volume_size = 15
  } 
  tags = {
    Name = "worker_node_1"
  }
}

resource "aws_instance" "worker_node2" {
  ami           = var.instance_ami
  instance_type = var.worker_instance_type
  key_name  = "${aws_key_pair.me5a-key.key_name}"
  security_groups = ["${aws_security_group.worker_security_group.id}"]
  associate_public_ip_address = true
  subnet_id = "${aws_subnet.public_subnet2.id}"
  root_block_device {
    volume_size = 15
  } 
  tags = {
    Name = "worker_node_2"
  }
}
