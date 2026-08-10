terraform {

  backend "s3" {
    bucket         = "terraform-state-590703363311"
    key            = "aws-project3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
