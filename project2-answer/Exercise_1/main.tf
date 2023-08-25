# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  version = "5.12.0"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  ami           = "ami-08a52ddb321b32a8c"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0a68ae3f8371c8916"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "UdacityM4" {
  ami           = "ami-08a52ddb321b32a8c"
  count         = "2"
  instance_type = "m4.large"
  subnet_id     = "subnet-0a68ae3f8371c8916"
  tags = {
    Name = "Udacity M4"
  }
}
