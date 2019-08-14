resource "google_compute_firewall" "allow-office" {
  name    = "allow-office"
  network = "${google_compute_network.allwaysfree-net.name}"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }
  source_ranges = ["xxx.xxx.xxx.xxx/32"]
  target_tags   = ["free"]
}

resource "google_compute_firewall" "allow-web" {
  name    = "allow-web"
  network = "${google_compute_network.allwaysfree-net.name}"
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["free"]
}
