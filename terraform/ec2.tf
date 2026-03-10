resource "aws_instance" "jenkins_master" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  key_name               = var.key_name

  root_block_device {
    volume_size = 15
    volume_type = "gp3"
  }

  tags = { Name = "jenkins_master" }
}

resource "aws_instance" "jenkins_agent" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  key_name               = var.key_name

  root_block_device {
    volume_size = 15
    volume_type = "gp3"
  }

  tags = { Name = "jenkins_agent" }
}
