resource "google_storage_bucket" "bucket" {
  name = lower("${var.project}-${var.bucket-suffix}")
}

resource "google_storage_bucket_object" "obj" {
  bucket = google_storage_bucket.bucket.name
  name   = var.objName
  content = "hello world. from module A"
}
