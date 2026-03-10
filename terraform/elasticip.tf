# --- Elastic IP for Jenkins Master ---
resource "aws_eip" "master_eip" {
  domain = "vpc"
  tags   = { Name = "jenkins_master_eip" }
}

resource "aws_eip_association" "master_assoc" {
  instance_id   = aws_instance.jenkins_master.id
  allocation_id = aws_eip.master_eip.id
}

# --- Elastic IP for Jenkins Agent ---
resource "aws_eip" "agent_eip" {
  domain = "vpc"
  tags   = { Name = "jenkins_agent_eip" }
}

resource "aws_eip_association" "agent_assoc" {
  instance_id   = aws_instance.jenkins_agent.id
  allocation_id = aws_eip.agent_eip.id
}
