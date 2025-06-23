variable "Instancetype" {
  type = number
}
output "NumberDataType" {
 value = var.Instancetype
/*You need to provide the instancetype value as number as we defined Data type as a number */
}

variable "AmiVariable" {
  type = string
}
output "StringDataType" {
 value = var.AmiVariable
/*You need to provide the instancetype value as string as we defined Data type as a string such as "jkjhj"*/
}

variable "SshPort" {
  type = list
}

output "ListDataType" {
 value = var.SshPort

/*You need to provide the instancetype value as list as we defined Data type as a list such as [123,"Jiya"]*/

}

variable "httpPort" {
  type = map
}

output "MapDataType" {
 value = var.httpPort

/*You need to provide the instancetype value as string as we defined Data type as a map such as { "name = "Myname" , "DOB" = "12345"}
*/

}
