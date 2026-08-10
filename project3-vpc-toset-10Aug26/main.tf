/*###
resource "aws_vpc" "block-vpc" {
  cidr_block           = "10.0.0.0/16"
}

resource "aws_vpc" "block-vpc" {
  for_each = toset(["30.0.0.0/16","30.0.1.0/16"])

  cidr_block           = each.value
}


###
resource "aws_vpc" "block-vpc" {
  for_each = toset(var.vpcs)

  cidr_block           = each.value
}

###*/

### main
resource "aws_vpc" "block-vpc" {
  for_each = var.vpcs

  cidr_block           = each.value
}
