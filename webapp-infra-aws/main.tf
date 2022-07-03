
#data "aws_ami" "ubuntu" {
#  most_recent = true
#
#  filter {
#    name   = "name"
#    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
#  }
#
#  filter {
#    name   = "virtualization-type"
#    values = ["hvm"]
#  }
#
#  owners = ["099720109477"] # Canonical
#}

variable "aws_access_key" {}
variable "aws_secret_key" {}

resource "aws_instance" "app_server" {
  instance_type = "t2.micro"
  ami = "ami-08df646e18b182346"
  tags = {
    Name = "ExampleAppServerInstance"
  }

}


