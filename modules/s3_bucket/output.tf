output "s3-bucket" {
  value=aws_s3_bucket.oluwasesan-static-bucket
}

output "aws_s3_object" {
  value=aws_s3_object.oclean
}