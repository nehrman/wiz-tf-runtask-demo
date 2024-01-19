module "bad_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-insecure-s3-bucket"
  acl    = "public-read"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false

  versioning = {
    enabled = true
  }
}