provider "aws" {
    
    shared_config_files = ["/Users/subha/.aws/config"]
    shared_credentials_files = ["/Users/subha/.aws/credentials"]
}
resource "aws_security_group" "Crm-Seg1" {
  name = "Crm-sg"
  description = "Imran puku"
}

resource "aws_vpc_security_group_ingress_rule" "inbound" {

  security_group_id = aws_security_group.Crm-Seg1.id
  from_port = 100
  ip_protocol = "tcp"
  to_port = 200
  cidr_ipv4 = "10.0.0.0/32"
  
}

resource "aws_vpc_security_group_egress_rule" "outbound" {
  security_group_id = aws_security_group.Crm-Seg1.id
  cidr_ipv4 = "10.229.0.0/32"
  ip_protocol = "-1"
}

output "securitygrp" {
  value = aws_security_group.Crm-Seg1
}

output "awsingress" {
  value = aws_vpc_security_group_ingress_rule.inbound
}

output "awsegress" {
  value = aws_vpc_security_group_egress_rule.outbound
}