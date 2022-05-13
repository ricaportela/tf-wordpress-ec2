provider "aws" {
  region  = "us-east-1"
  version = "~>  4.13.0"

}

resource "aws_instance" "web" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  key_name      = "rps-tutoria-dev"

  security_groups = [aws_security_group.web.name]

  tags = {
    Name = "WebServerByTf"
  }

}

resource "aws_security_group" "web" {
  name        = "web-security-group"
  description = "Allow acess to our web server"
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "instance_public_dns" {
  value = aws_instance.web.public_dns

}
