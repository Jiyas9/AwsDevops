provider "aws" {
    region = "ap-south-1"
    access_key = "ghjkjhbgvfcfghjkjhg"
    secret_key = "hjkjhghjkjhgbbhjjb"
}
resource "aws_instance" "Demo" {

    instance_type = "t2.medium"
    ami = "ami-kjhghjjhgghjhb"
    
  
}
 
}
