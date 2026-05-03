terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket       = "l-1cm-l-sandbox-tf-tfstate-169049008132"
    key          = "envs/default/terraform.tfstate"
    region       = "ap-northeast-1"
    encrypt      = true
    use_lockfile = true
  }
}
