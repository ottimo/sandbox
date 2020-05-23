#------------------------------------------------------------------------------
# Setup the Provider
#------------------------------------------------------------------------------
provider "google" {
  credentials = file("account.json")
  project     = var.gcp_project
  region      = var.region
}
