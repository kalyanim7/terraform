provider "aws" {
   region = "us-east-2"
}

resource "aws_instance" "kalyaniserver"{

ami ="ami-0fc20dd1da406780b"
instance_type="t2.micro"
tags= {
Name= "terraform02"
}
key_name= "kalyani_ubuntu"
}

