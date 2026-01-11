resource "aws_instance" "mumbai_ec2" {
  provider      = aws.mumbai
  ami           = var.mumbai_ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.mumbai_key.key_name

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install nginx -y
    systemctl start nginx
    systemctl enable nginx
  EOF

  tags = {
    Name = "Mumbai-Nginx-Server"
  }
}

resource "aws_instance" "virginia_ec2" {
  provider      = aws.virginia
  ami           = var.virginia_ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.virginia_key.key_name

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install nginx -y
    systemctl start nginx
    systemctl enable nginx
  EOF

  tags = {
    Name = "Virginia-Nginx-Server"
  }
}
