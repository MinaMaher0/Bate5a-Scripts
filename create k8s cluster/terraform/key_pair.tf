resource "aws_key_pair" "me5a-key" {
  key_name   = "me5a-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}