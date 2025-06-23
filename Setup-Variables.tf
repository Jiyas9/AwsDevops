provider "aws" {
  region = "ap-south-1"
  shared_config_files = [ "C:/Users/subha/.aws/config" ]
  shared_credentials_files = [ "C:/Users/subha/.aws/credentials" ]
}

resource "aws_instance" "NewInstance" {
  ami = var.AmiVariable
  instance_type = var.Instancetype
}

resource "aws_security_group" "NewSg" {
  name = "LatestSG"
  description = "Checking New Vriavale"
  
}

resource "aws_vpc_security_group_ingress_rule" "Ing1" {
  security_group_id = aws_security_group.NewSg.id
  ip_protocol = "tcp"
  cidr_ipv4 = var.CirdIp
  from_port = var.httpPort
  to_port = var.httpPort
}

resource "aws_vpc_security_group_ingress_rule" "Ing2" {
  security_group_id = aws_security_group.NewSg.id
  ip_protocol = "tcp"
  cidr_ipv4 = var.CirdIp
  from_port = var.SshPort
  to_port = var.SshPort
}