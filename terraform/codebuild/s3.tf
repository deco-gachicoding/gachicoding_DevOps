resource "aws_s3_bucket" "gachicoding_public_storage" {
  bucket = "gachicoding-storage"

  tags = {
    Name = "gachicoding-storage"
  }
}

resource "aws_s3_bucket_acl" "storage_acl" {
  bucket = aws_s3_bucket.gachicoding_public_storage.id
  acl    = "public-read"
}

#resource "aws_s3_bucket_public_access_block" "gachicoding_public_access_block" {
#  bucket = aws_s3_bucket.gachicoding_public_storage.id
#
#  block_public_acls   = true
#  block_public_policy = true
#}
#
#resource "aws_s3_bucket" "alb" {
#  bucket = "alb-log-gachicoding.com"
#}
#
#resource "aws_s3_bucket_policy" "s3_policy" {
#  bucket = aws_s3_bucket.alb.id
#  policy = <<EOF
#{
#  "Version": "2012-10-17",
#  "Statement": [
#    {
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.alb_account_id}:root"
#      },
#      "Action": "s3:PutObject",
#      "Resource": "arn:aws:s3:::alb-log-gachicoding.com/*"
#    }
#  ]
#}
#  EOF
#}
#
#resource "aws_s3_bucket_lifecycle_configuration" "log_lifecycle_config" {
#  bucket = aws_s3_bucket.alb.id
#
#  rule {
#    id = "log"
#
#    expiration {
#      days = 90
#    }
#
#    filter {
#      and {
#        prefix = "log/"
#
#        tags = {
#          rule      = "log"
#          autoclean = "true"
#        }
#      }
#    }
#
#    status = "Enabled"
#
#    transition {
#      days          = 30
#      storage_class = "STANDARD_IA"
#    }
#
#    transition {
#      days          = 30
#      storage_class = "GLACIER"
#    }
#  }
#
#  rule {
#    id = "tmp"
#
#    filter {
#      prefix = "tmp/"
#    }
#
#    expiration {
#      date = "2023-01-13T00:00:00Z"
#    }
#
#    status = "Enabled"
#  }
#}