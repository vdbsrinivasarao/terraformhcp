provider "aws" {
  region = "ap-south-1"
}  
resource "aws_instance" "server" {
  count = 4
  ami                    = "ami-06b6e5225d1db5f46"
  instance_type          = "t2.medium"
  key_name= "durgakeypair.pem"
  vpc_security_group_ids = ["sg-0af871da3173f77dc"]
  tags = {
  Name = var.instance_names[count_index]
  }
}
variable "instance_names" {
default = ["Jenkins","Nexus","Tomcat1","Tomcat2"]
}
