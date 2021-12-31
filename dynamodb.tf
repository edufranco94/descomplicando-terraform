# resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
#   name           = "terraform-state-lock-dynamo"
#   hash_key       = "LockID"
#   write_capacity = 20
#   read_capacity  = 20

#   attribute {
#     name =  "LockID"
#     type = "S"
#   }

#   tags = {
#     Name         = "dynamodb-table-1"
#     productOwner = "Eduardo Franco"
#     description  = "criada para realizar state locking table" 
#   }
# }