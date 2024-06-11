terraform {
  backend "s3" {
    bucket = "terraformbackend12" # Replace with your actual S3 bucket name
    key    = "test/terraform.tfstate"
    region = "ap-south-1"
  }
}
