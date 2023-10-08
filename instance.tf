# Configure the AWS provider with your desired region
provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

# Define the EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-0ad704c126371a549"  
  instance_type = "t2.micro"     

  # Optional: You can add more configuration options here, such as:
  # subnet_id      = "subnet-xxxxxxxxxx"
  # security_groups = ["security-group-name"]

  # Optional: Define key_name if you want to use an existing SSH key pair
  # key_name       = "your-key-pair-name"
}

# Output the public IP address of the created instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
