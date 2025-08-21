# ---------- EC2 Instance with Apache + Template (Ubuntu) ----------
resource "aws_instance" "my_ec2" {
  ami           = "ami-044415bb13eee2391" # Ubuntu 22.04 LTS in us-east-1 (change for your region)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  key_name      = "Docker"   # Replace with your key pair

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y apache2 wget unzip

              systemctl start apache2
              systemctl enable apache2

              cd /var/www/html
              rm -rf *
              wget https://templatemo.com/tm-zip-files-2020/templatemo_596_electric_xtra.zip -O site.zip
              unzip site.zip
              mv templatemo_596_electric_xtra/* .
              rm -rf templatemo_596_electric_xtra site.zip
              EOF

  tags = {
    Name = "my-web-ec2"
  }
}
