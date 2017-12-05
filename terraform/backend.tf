terraform {
  required_version = "0.10.8"

  backend "s3" {
    bucket         = "sds-terraform"
    key            = "dev.tfstate"
  }
}
// Remote state for dns config
data "terraform_remote_state" "aws_account" {
  backend = "s3"

  config {
    bucket         = "sds-terraform"
    key            = "dev.tfstate"
  }
}
