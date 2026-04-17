terraform {
  backend "s3" {
    bucket         = "my-terraform-unique-bucket-081999"
    key            = "3tier/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-lock-table"
  }
}

