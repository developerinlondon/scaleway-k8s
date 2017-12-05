terraform {
  required_version = "0.10.8"

  backend "s3" {
    bucket         = "sds-dev-terraform"
    key            = "terraform/dev.tfstate"
    region         = "eu-west-2"
  }
}
// Remote state for dns config
data "terraform_remote_state" "aws_account" {
  backend = "s3"

  config {
    bucket         = "sds-dev-terraform"
    key            = "terraform/dev.tfstate"
    region         = "eu-west-2"
  }
}
