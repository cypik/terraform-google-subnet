output "subnet_id" {
  description = "GCS bucket id."
  value       = join("", google_compute_subnetwork.subnetwork[*].id)
}

output "subnet_name" {
  description = "GCS bucket name."
  value       = join("", google_compute_subnetwork.subnetwork[*].name)
}

output "subnet_creation_timestamp" {
  value = join("", google_compute_subnetwork.subnetwork[*].creation_timestamp)
}

output "subnet_gateway_address" {
  value = join("", google_compute_subnetwork.subnetwork[*].gateway_address)
}

output "subnet_ipv6_cidr_range" {
  value = join("", google_compute_subnetwork.subnetwork[*].ipv6_cidr_range)
}

output "subnet_external_ipv6_prefix" {
  value = join("", google_compute_subnetwork.subnetwork[*].external_ipv6_prefix)
}

output "subnet_self_link" {
  value = join("", google_compute_subnetwork.subnetwork[*].self_link)
}

output "route_id" {
  value = join("", google_compute_route.default[*].id)
}

output "route_next_hop_network" {
  value = join("", google_compute_route.default[*].next_hop_gateway)
}

output "route_self_link" {
  value = join("", google_compute_route.default[*].self_link)
}

output "router_id" {
  value = join("", google_compute_router.default[*].id)
}

output "router_creation_timestamp" {
  value = join("", google_compute_router.default[*].creation_timestamp)
}

output "router_self_link" {
  value = join("", google_compute_router.default[*].self_link)
}

output "address_name" {
  value = join("", google_compute_address.default[*].name)
}

output "address_project" {
  value = join("", google_compute_address.default[*].project)
}

output "address_region" {
  value = join("", google_compute_address.default[*].region)
}

output "router_nat_name" {
  value = join("", google_compute_router_nat.nat[*].name)
}

output "router_nat_router" {
  value = join("", google_compute_router_nat.nat[*].router)
}

output "router_net_project" {
  value = join("", google_compute_router_nat.nat[*].project)
}

output "router_net_region" {
  value = join("", google_compute_router_nat.nat[*].region)
}
