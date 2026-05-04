data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

resource "aws_s3_bucket" "regional_namespace_bucket" {
  bucket           = "sample-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}-an"
  bucket_namespace = "account-regional"
}

resource "aws_s3_bucket_public_access_block" "regional_namespace_bucket" {
  bucket = aws_s3_bucket.regional_namespace_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
