### Cria a maquina virtual webserver-wordpress-terraform
resource "google_compute_instance" "webserver-wordpress-terraform" {
  name 		= var.name
  machine_type	= var.machine_type
  zone		= var.zone
  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }
  metadata_startup_script = file("files/webserver-wordpress-install.sh")
  network_interface {
    network = "${var.network}"
    access_config {}
  }
  tags = ["http-server", "https-server"]
}
