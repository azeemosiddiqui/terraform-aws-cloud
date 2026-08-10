/*###
resource "aws_vpc" "block-vpc" {
  cidr_block           = "10.0.0.0/16"
}

resource "aws_vpc" "block-vpc" {
  for_each = {
  vpc1 = "10.0.0.0/16"
  vpc2 = "10.1.0.0/16"
             }

  cidr_block           = each.value
}
###*/

### main
resource "aws_vpc" "block-vpc" {
  for_each = var.vpcs

  cidr_block           = each.value
}