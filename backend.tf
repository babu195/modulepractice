terraform {
    backend "s3" {
      bucket = "nachmerirani"
      key = "nachmeriraninach"
      region = "us-west-2"
      dynamodb_table = "nachonacho"
    }
 
}