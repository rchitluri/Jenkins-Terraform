terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "ca-central-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-0156b61643fdfee5c"
   instance_type = "t2.micro"
   key_name = "Practice_KP"
   tags = {
      Name = "Example"
   }

}
