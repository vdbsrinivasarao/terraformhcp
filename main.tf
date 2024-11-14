provider "aws" {
  region = "ap-south-1"
}  
resource "aws_instance" "server" {
  count = 1
  ami                    = "ami-0dee22c13ea7a9a67"
  instance_type          = "t2.micro"
 
tags= {
Name= "Terraformserver"
}
}
