provider "aws" {

shared_config_files = [ "C:/Users/subha/.aws/config" ]
shared_credentials_files = [ "C:/Users/subha/.aws/credentials" ]
  
}

resource "aws_eip" "LatestEip" {
    domain = "vpc" 
}

resource "aws_security_group" "idksgc" {
    name = "newsg"
    description = "demoone for eip"
  
}

resource "aws_vpc_security_group_ingress_rule" "latestinbound" {
security_group_id = aws_security_group.idksgc.id
cidr_ipv4 = "${aws_eip.LatestEip.public_ip}/32"  
ip_protocol = "-1"

}
resource "aws_vpc_security_group_egress_rule" "latestOutbound" {
  security_group_id = aws_security_group.idksgc.id
  cidr_ipv4 = "${aws_eip.LatestEip.public_ip}/32"
  from_port = "80"
  to_port = "650"
  ip_protocol = "tcp"
}

output "public-ip" {
    value = aws_eip.LatestEip.public_ip
}

output "SecGrp" {
    value = aws_security_group.idksgc.id
}
