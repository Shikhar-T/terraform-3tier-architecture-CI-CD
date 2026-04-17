resource "aws_s3_bucket" "bucket" {
  bucket        = "my-terraform-unique-bucket-081999"
  force_destroy = true

  tags = {
    Name = "my-bucket"
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  
  versioning_configuration {
    status = "Suspended"
  }
}

