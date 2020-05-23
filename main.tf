#------------------------------------------------------------------------------
# Require Version .12
#------------------------------------------------------------------------------
terraform {
  required_version = ">= 0.12.0"
}

# Resource random to generate random characters
resource "random_string" "name" {
  length  = 6
  special = false
  upper   = false
}

# The designation of the name, which is built from the variable name + environment terraform + result random
locals {
  name = "${var.name}-${terraform.workspace}-${random_string.name.result}"
}

