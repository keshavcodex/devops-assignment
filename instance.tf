variable "AMI_ID" {
  description = "this is ami id of aws"
}

provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = var.AMI_ID Replace with your desired AMI ID
  instance_type = "t2.micro"             # Replace with your desired instance 
}
