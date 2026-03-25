# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami               = "ami-05d2d839d4f73aafb"  #Ubuntu
  # ami               = "ami-0d2614eafc1b0e4d2"  #windows
  instance_type     = "t2.micro"
  #availability_zone = "ap-south-1b"
  availability_zone = "ap-south-1a"
  tags = {
     "Name" = "web1"
    #"tag1" = "Update-test-1"    
  }
}

