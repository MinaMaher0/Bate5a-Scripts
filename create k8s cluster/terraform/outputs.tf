output "master_ip" {
  value = "${aws_instance.master_node.public_ip}"
}

output "worker_ip1" {
  value = "${aws_instance.worker_node1.public_ip}"
}

output "worker_ip2" {
  value = "${aws_instance.worker_node2.public_ip}"
}