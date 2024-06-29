resource "aws_s3_bucket" "oluwasesan-static-bucket" {
  bucket= var.bucket_name
  force_destroy = true
}

resource "aws_s3_object" "oclean" {
    
    bucket=aws_s3_bucket.oluwasesan-static-bucket.bucket
   for_each = fileset("modules/s3_bucket/oclean/", "**/*.*") 
   key = each.value
   source = "modules/s3_bucket/oclean/${each.value}"
   content_type = each.value
  # content_type = lookup(var.mime_types, each.value, "binary/octet-stream")

  
}
