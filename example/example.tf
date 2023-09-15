provider "google" {
  project = "opz0-397319"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

#####==============================================================================
##### module-vpc
#####==============================================================================

module "vpc" {
  source = "git::git@github.com:opz0/terraform-gcp-vpc.git?ref=master"

  name                                      = "app"
  environment                               = "test"
  project_id                                = "opz0-397319"
  routing_mode                              = "REGIONAL"
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}

#####==============================================================================
##### module-subnetwork
#####==============================================================================
module "subnet" {
  source = "./.././"

  name                = "app"
  environment         = "test"
  gcp_region          = "asia-northeast1"
  project_id          = "opz0-397319"
  network             = module.vpc.vpc_id
  source_ranges       = ["10.10.0.0/16"]
  secondary_ip_ranges = [{ "range_name" : "services", "ip_cidr_range" : "10.1.0.0/16" }, { "range_name" : "pods", "ip_cidr_range" : "10.3.0.0/16" }]
}