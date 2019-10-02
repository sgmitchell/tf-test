terraform {
  backend "gcs" {
    bucket = "sgmitchell-tftest-state"
    prefix = "projectA"
  }
}

provider "google" {
  project = "sgmitchell-tftest"
  region  = "us-central1"
  version = "3.6.0"
}

provider "google-beta" {
  project = "sgmitchell-tftest"
  region  = "us-central1"
  version = "3.6.0"
}

provider "external" {
  version = "~> 1.2.0"
}

provider "null" {
  version = "~> 2.1.2"
}

provider "random" {
  version = "~> 2.2.0"
}
