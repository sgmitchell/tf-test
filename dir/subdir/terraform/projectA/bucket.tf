resource "google_storage_bucket" "bucketA" {
  name = "sgmitchell-tftest-bucket-a"
}
resource "google_storage_bucket_object" "objA" {
  bucket = google_storage_bucket.bucketA.name
  name   = "objInProjA"
  content = "hello world. custom object A"
}

resource "google_storage_bucket_object" "objX" {
  bucket = google_storage_bucket.bucketA.name
  name   = "objInProjX"
  content = "hello world. custom object X"
}
