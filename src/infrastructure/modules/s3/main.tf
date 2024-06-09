resource "aws_s3_bucket" "nyc_trips_data_bucket" {
  bucket = var.s3_nyc_data_bucket_name
}

resource "aws_s3_object" "nyc_data_landing_folder_name" {
    bucket   = aws_s3_bucket.nyc_trips_data_bucket.id
    key      =  var.s3_nyc_data_landing_folder_name
}