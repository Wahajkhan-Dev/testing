terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "~> 5.0"
        }
    }
}

provider "google" {
    project = "first-1-451009"
    region = "us-west1"
}

resource "google_storage_bucket" "mybucket" {
    name = "my-terraform-bucket-090078601" #ensure globally unique
    location = "us-west1"
}

output "bucket_name" { 
    value = google_storage_bucket.mybucket.name
}