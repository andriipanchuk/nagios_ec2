provider "google" {
  credentials = "${file("./cyber-pro.json")}"
  project     = "${var.google_project_id}"
  zone        = "${var.zone}"
}

resource "google_compute_instance" "vm_instance" {
  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"

  boot_disk {
    initialize_params {
      size = "${var.instance_disk_zie}" 
      image = "centos-cloud/centos-7"
    }

  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata {
    sshKeys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
  }

  metadata_startup_script = <<EOF
  #!/bin/bash
  sudo yum install wget -y
  sudo yum install git -y
  git clole https://github.com/andriipanchuk/nagisxi.git
  cd nagisxi
  cd nagiosxi
  ./fullinstall
  
  EOF
  }