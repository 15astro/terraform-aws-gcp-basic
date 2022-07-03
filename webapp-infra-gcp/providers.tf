provider "google" {
  project     = "terraform-live"
  region      = "us-central1"
  credentials = file("secrets/terraform-live-sa.json")
}
