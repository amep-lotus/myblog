provider "aws" {
  region = "us-east-2"
  shared_credentials_file = "~/.aws/credentials"
  profile = "default"
}

resource "s3_bucket" "testing" {
  ami = "ami-0520e698dd500b1d1"
  instance_type = var.ec2_type
  count = var.instance_count

  tags = {
    Name = "HelloTerraform"
  }
}