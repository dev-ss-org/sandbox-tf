resource "aws_s3_bucket" "example" {
  bucket = "l-1cm-l-sandbox-tf-example-169049008132"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
