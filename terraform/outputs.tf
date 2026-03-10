output "master_ips" {
  value = {
    private_ip = aws_instance.jenkins_master.private_ip
    public_ip  = aws_eip.master_eip.public_ip
    elastic_ip = aws_eip.master_eip.public_ip
  }
}

output "agent_ips" {
  value = {
    private_ip = aws_instance.jenkins_agent.private_ip
    public_ip  = aws_eip.agent_eip.public_ip
    elastic_ip = aws_eip.agent_eip.public_ip
  }
}
