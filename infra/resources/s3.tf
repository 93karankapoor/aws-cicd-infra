# Insecure S3 bucket (public and unencrypted)
resource "aws_s3_bucket" "bad_example" {
  bucket = "my-insecure-bucket"
  acl    = "public-read"   # ❌ tfsec will complain about public ACL

  tags = {
    Name = "InsecureBucket"
  }
}