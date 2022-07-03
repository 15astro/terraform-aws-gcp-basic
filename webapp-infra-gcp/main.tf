resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance-atish"
  machine_type = "e2-micro"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network-atish"
  auto_create_subnetworks = "true"
}


