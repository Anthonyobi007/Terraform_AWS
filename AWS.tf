# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name              = "my-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "dubian"
  bundle_id         = "nano_1_0"
  key_pair_name     = "Centos-key"
  tags = {
    env  = "dev"
    owner = "zigi"
    
  }
}

resource "aws_iam_group" "group1" {
  name = "terraform"
  
}
resource "aws_iam_group" "demo-user" {
  name = "zigi"
  
}