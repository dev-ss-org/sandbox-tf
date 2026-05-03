data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

resource "aws_s3_bucket" "regional_namespace_bucket" {
  bucket = "${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}-${random_string.bucket_suffix.result}"
}

resource "random_string" "bucket_suffix" {
  length  = 8
  lower   = true
  numeric = true
  special = false
  upper   = false
}
