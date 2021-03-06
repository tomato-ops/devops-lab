terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "example_server" {
  ami           = "ami-01e36b7901e884a10"
  instance_type = "t2.micro"
  key_name = "lab"
  tags = {
    Name = "ExampleServer"
  }
}

