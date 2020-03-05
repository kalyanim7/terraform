provider "aws" {
   region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "terraformbucket0302"
    key    = "userdatatfstatefiles/terraform.tfstate"
    region = "us-east-2"
  }
}

resource "aws_instance" "terraformserver" {
  #ami = "ami-5e8bb23b"
  ami = "${lookup(var.amiid, var.region)}"
  instance_type = "t2.micro"
  count = "${var.instance_count}"
  vpc_security_group_ids = ["${var.security_group}"]


  key_name = "${var.key_name}"

  user_data = "${file("user_data.txt")}"
}
