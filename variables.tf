#------------------------------------------------------------------------------
# Variables that need to be set
#------------------------------------------------------------------------------

variable "tf_project" {
  description = "The name of the project folder that inputs.tfvars is in"
  type        = string
}


variable "region" {
  type = string
}

variable "gcp_project" {
  type = string
}

# Name variable definition
variable "name" {
  default = "foo"
}

# Defining a variable source OS image for an instance
variable "image" {
  default = "ubuntu-os-cloud/ubuntu-minimal-1804-lts"
}

# Definition of an instance type variable depending on the choice of tariff
variable "server_type" {
  default = "n1-standard-2"
}

# Definition of the region in which the instance will be created
variable "zone" {
  default = "us-west1-a"
}

# Determining the ssh key that will be added to the instance when creating
variable "public_key" {}