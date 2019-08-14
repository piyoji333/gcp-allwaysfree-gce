resource "google_compute_address" "allwaysfree" {
  name   = "allwaysfree"
  region = "${var.region}"
}


resource "google_compute_instance" "allwaysfree" {
  name         = "allwaysfree"
  machine_type = "f1-micro"
  zone         = "${var.region_zone}"
  tags         = ["free"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size  = "30"
      type  = "pd-standard"
    }
  }

  metadata_startup_script = <<EOT
timedatectl set-timezone Asia/Tokyo
EOT

  network_interface {
    subnetwork = "${google_compute_subnetwork.subnet1.name}"
    access_config {
      nat_ip = "${google_compute_address.allwaysfree.address}"
    }
  }

  metadata = {
     "block-project-ssh-keys" = "true"
     "sshKeys" = "${var.test_ssh_keys}"
    }
}
