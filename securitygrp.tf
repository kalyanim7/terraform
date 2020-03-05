provider "aws" {
   region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "terraformbucket0302"
    #key    = "tfstatefiles/terraform.tfstate"
    key    = "project0302/terraform.tfstate"
    region = "us-east-2"
  }
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
#  vpc_id      = "${aws_vpc.main.id}"


}
