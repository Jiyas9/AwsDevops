provider "aws" {
  

  region = "ap-south-1"
  shared_config_files = [ "C:/Users/subha/.aws/config" ]
  shared_credentials_files = [ "C:/Users/subha/.aws/credentials" ]
}
/*With the below code you can be able to create 5 instances with same name Jiya */
resource "aws_instance" "MyEC2" {
  instance_type = "t2.micro"
  ami = "hjguiihhj"
  count = 5

  tags = {
    name = "Jiya"
  }
}

/*With the below code you can be able to create 5 instances with diff name Jiya1,jiya2,jiya3*/

resource "aws_instance" "MyEC2" {
  instance_type = "t2.micro"
  ami = "hjguiihhj"
  count = 5

  tags = {
    name = "Jiya-${count.index}"
  }
}


/*With the below code you can be able to create 5 instances with diff name Jiya,imran,shirin that we defined in varaibles*/

variable "MyEC2" {
  type = list
  default = ["Jiya","Imran","Subbu","shirin","abd"]
  
}
resource "aws_instance" "MyEC2" {
  instance_type = "t2.micro"
  ami = "hjguiihhj"
  count = 5

  tags = {
    name = var.MyEC2[count.index]
  
  }
}

