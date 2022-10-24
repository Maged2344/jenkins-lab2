terraform {
  backend "s3" {
    bucket         = "terraform-bucket-fstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}