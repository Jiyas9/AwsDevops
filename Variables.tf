variable "Instancetype" {
  default = "t2.micro"
}

variable "AmiVariable" {
  default = "ami-0b09627181c8d5778"
}
variable "SshPort" {
  default = "22"
}

variable "httpPort" {
  default = "80"
}

variable "CirdIp" {
  default = "10.0.0.0/32"
}