terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.2"
    }
    nexus = {
      source = "datadrivers/nexus"
      version = "1.18.0"
    }
  }
}

provider "local" {
  # Configuration options
  
}

provider "nexus" {
  insecure = true
  password = "CHANGE_ME"
  url      = "http://127.0.0.1:8081"
  username = "admin"
}

