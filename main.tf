provider "aws" {
  region = "us-east-1"
}
#jfjf

resource "aws_instance" "example" {
  ami           = "ami-0453ec754f44f9a4a" 
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "TestEC2Instance"
}


output "instance_id" {
  value = aws_instance.example.id
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
output "instance_name" {
  value = var.instance_name
}

