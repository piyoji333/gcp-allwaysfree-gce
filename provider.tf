// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("../.gcpconfig/account.json")}"
  project     = "project-id"
  region      = "asia-northeast1"
}
