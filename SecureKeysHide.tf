

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