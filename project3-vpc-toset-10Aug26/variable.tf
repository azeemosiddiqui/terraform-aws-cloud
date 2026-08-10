/*###
variable "vpcs" {
  type = list(string)
}
###*/

###
variable "vpcs" {
  type = set(string)
}
