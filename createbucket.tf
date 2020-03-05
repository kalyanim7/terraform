provider "aws" {
   region = "us-east-2"
}


#To create  S3 bucket
resource "aws_s3_bucket" "testing" {
  bucket = "terraformbucket0302"
  acl    = "public-read"



  tags = {
    Name        = "terrabucket"
    Environment = "Public Bucket for Test"
 
