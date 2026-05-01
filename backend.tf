terraform {
  backend "s3" {
    bucket = "rrr-bahubali"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "new-terraform-state-lock"
  }
}
