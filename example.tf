module "gcs_bucket" {
  source      = "./gcp-module/"
  project     = "moonlit-grail-401618"
  bucket_name = "testing_bucket_gcp_69"
  region      = "europe-west1"
}
