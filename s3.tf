resource "aws_s3_bucket" "test" {
  bucket           = "testbucket202605031523-169049008132-ap-northeast-1-an"
  bucket_namespace = "account-regional"
}

resource "aws_s3_bucket_public_access_block" "test" {
  bucket = aws_s3_bucket.test.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
