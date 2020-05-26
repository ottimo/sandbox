#------------------------------------------------------------------------------
# Outputs
#------------------------------------------------------------------------------

resource "google_compute_address" "static" {
  name = "ipv4-address"
}

data "google_compute_image" "sandbox-nested-virt" {
  family  = "ubuntu-minimal-1804-lts"
  project = "ubuntu-os-cloud"
  // zone = "us-west1-a"
}

resource "google_compute_disk" "sandbox-disk" {
  name  = "sandbox-disk"
  type  = "pd-ssd"
  zone  = "us-west1-a"
  image = data.google_compute_image.sandbox-nested-virt.self_link
  size = var.disk_size
}


resource "google_compute_image" "sandbox-nested-virt" {
  name = "sandbox-nested-virt"
  family = "ubuntu-minimal-1804-lts"
  source_disk = google_compute_disk.sandbox-disk.self_link
  disk_size_gb = var.disk_size
  licenses = ["https://www.googleapis.com/compute/v1/projects/vm-options/global/licenses/enable-vmx"]
}

resource "google_compute_instance" "default" {
  name         = "sandbox-${local.name}" # Name server
  machine_type = var.server_type
  zone         = var.zone
  min_cpu_platform = "Intel Haswell"
  boot_disk {
    initialize_params {
      image = google_compute_image.sandbox-nested-virt.self_link
      size= var.disk_size
    }
  }
 
  metadata = {
    ssh-keys = "root:${var.public_key}" # SSH key
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = google_compute_address.static.address
    }
  }


  connection {
    type = "ssh"
    user = "root"
    host = google_compute_address.static.address
  }
  provisioner "local-exec" {
    command = "echo The server\\'s IP address is ${google_compute_address.static.address}"
  }
  provisioner "local-exec" {
    command = "sleep 60"
  }
  provisioner "local-exec" {
    command = "ansible-playbook -u root -i '${google_compute_address.static.address},' python.yml"
  }
  provisioner "local-exec" {
    command = "ansible-playbook -u root -i '${google_compute_address.static.address},' provision.yml -e 'ansible_python_interpreter=/usr/bin/python2'"
  }
}

// output "public_ip" {
//   value = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
// }
