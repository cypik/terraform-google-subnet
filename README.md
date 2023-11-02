# terraform-gcp-subnet
# GCP Infrastructure Terraform Configuration

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Examples](#examples)
- [Author](#author)
- [License](#license)

## Introduction

This Terraform configuration sets up a Google Cloud Platform (GCP) infrastructure, including a Virtual Private Cloud (VPC) and subnetworks with specified configurations.

## Usage

To get started, make sure you have configured your GCP provider. You can use the following code as a starting point:

```hcl

module "vpc" {
  source = "git::git@github.com:opz0/terraform-gcp-vpc.git?ref=master"

  name                                      = "app"
  environment                               = "test"
  project_id                                = "opz0-397319"
  routing_mode                              = "REGIONAL"
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}

module "subnet" {
  source = "https://github.com/opz0/terraform-gcp-subnet.git"

  name                = "app"
  environment         = "test"
  gcp_region          = "asia-northeast1"
  project_id          = "opz0-397319"
  network             = module.vpc.vpc_id
  source_ranges       = ["10.10.0.0/16"]
  secondary_ip_ranges = [
    { "range_name" : "services", "ip_cidr_range" : "10.1.0.0/16" },
    { "range_name" : "pods", "ip_cidr_range" : "10.3.0.0/16" }
  ]
}

Make sure to configure the variables according to your requirements.

## Module Inputs
- name (string): The name of the infrastructure components.
- environment (string): The environment in which the infrastructure is being created.
- project_id (string): The GCP project ID.
- routing_mode (string): The routing mode for the VPC (e.g., "REGIONAL").
- network_firewall_policy_enforcement_order (string): The enforcement order for network firewall policies.

## Examples
- For detailed examples on how to use this module, please refer to the 'examples' directory within this repository.

## Author
Your Name Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opz0/terraform-gcp-subnet/blob/readme/LICENSE) file for details.
