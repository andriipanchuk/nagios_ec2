variable "instance_name" {
  default = "nagions"
  description = "- (Optional) Give an any name on bastion host"
}

variable "google_project_id" {
  default = "tactile-metrics-303021"
  description = "- (Optional) That is gonna be used for our particular project ID in GCP"  
}

variable "zone" {
  default = "us-west1-b"
  description = "- (Optional) Here we are specified in which A-Z suppose to be our bastion host"  
}

variable "machine_type" {
  default = "n1-standard-1"
  description = "- (Optional) VM instance, including the system memory size, virtual CPU, and persistent disk limits" 
}



variable "managed_zone" {
  default = "fuchicorp"
  description =  "- (Optional) Existing Google Domain zone in GCP"
}

variable "gce_ssh_user" {
  default = "andri"
  description =  "- (Optional) That's will use for entry via ssh to the bastion host" 
}

variable "gce_ssh_pub_key_file" {
  default = "~/.ssh/id_rsa.pub"
  description = "- (Optional) Here is will be a choosing an access method to bastion host"  
}

variable "instance_disk_zie" {
  default = "40" 
  description = "- (Optional) The disk size for the bastion host <example 30 40 50 >"
}

