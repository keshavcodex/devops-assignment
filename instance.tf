provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0ad704c126371a549"  
  instance_type = "t2.micro"     
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
