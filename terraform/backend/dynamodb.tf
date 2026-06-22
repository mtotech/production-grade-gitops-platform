# Create DynamoDB Lock Table to Prevents two engineers
# running terraform apply simultaneously

resource "aws_dynamodb_table" "terraform_lock" {

  name         = var.dynamodb_table
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
