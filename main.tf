gprovider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0f71b90bee7050a75"
  instance_type = "t3.micro"

  tags = {
    Name = "DevOps-Target-Server"
  }
}

