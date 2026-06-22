# s3 bucket to store terraform state file

resource "aws_s3_bucket" "terraform_state" {

  bucket = var.bucket_name

  tags = {
    Name = "Terraform Backend"
  }
}

# enable versionig for Terraform state history ,Rollback support,Protection against accidental deletion

resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

# enable  Encrypt for to encrupt state file at rest ,Production requirement

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {

  bucket = aws_s3_bucket.terraform_state.id

  rule {

    apply_server_side_encryption_by_default {

      sse_algorithm = "AES256"
    }
  }
}
