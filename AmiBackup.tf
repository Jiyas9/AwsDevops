

/*
provider "aws" {
    region = "ap-south-1"
    access_key = "ghjkjhbgvfcfghjkjhg"
    secret_key = "hjkjhghjkjhgbbhjjb"
}
*/

provider "aws" {
    alias = "myotheraws"

    shared_config_files = ["C:/Users/subha/.aws/config"]
    shared_credentials_files = ["C:/Users/subha/.aws/credentials"]
}

resource "aws_iam_user" "Newami" {
  name     = "crmami"
 
}

resource "aws_ami_from_instance" "Newamibackup" {
  name = "AmiBackup"
  source_instance_id = "i-05dd6bd4edaa3a239"
  snapshot_without_reboot = true
  description = "Taking backup of running instance"
  
}

output "ami" {
  value = aws_ami_from_instance.Newamibackup
  
}