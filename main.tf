provider "aws" {
  region = "ap-south-1"
}  
resource "aws_instance" "ONE" {
  count = 4
  ami                    = "ami-06b6e5225d1db5f46"
  instance_type          = "t2.medium"
  key_name= "durgakeypair"
  vpc_security_group_ids = ["sg-0af871da3173f77dc"]
 
}
