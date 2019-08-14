resource "google_compute_network" "allwaysfree-net" {
  name                    = "allwaysfree-net"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "192.168.10.0/24"
  network       = "${google_compute_network.allwaysfree-net.name}"
  description   = "subnet1"
  region        = "us-east1"
}
