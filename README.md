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
## Example: subnet
```hcl
module "subnet" {
  source        = "git::https://github.com/cypik/terraform-gcp-subnet.git?ref=v1.0.0"
  subnet_names  = ["subnet-a", "subnet-b", "subnet-c"]
  gcp_region    = "asia-northeast1"
  network       = module.vpc.vpc_id
  ip_cidr_range = ["10.10.1.0/24", "10.10.5.0/24", "10.10.10.0/24"]
}
```
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
This project is licensed under the MIT License - see the [LICENSE](https://github.com/cypik/terraform-gcp-subnet/blob/master/LICENSE) file for details.
