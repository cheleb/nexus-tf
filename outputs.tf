resource "local_file" "nexus" {
  filename = "/opt/terraform/nexus/install.txt"
  content = "Terraform"
}



data "nexus_repository" "maven-central" {
  name = "maven-central"

}

resource "nexus_repository" "sbt-plugin-release" {
  name = "sbt-plugin-release"
  type = "proxy"
  format = "raw"

  proxy {
      remote_url = "https://scala.jfrog.io/artifactory/sbt-plugin-releases/"
  }

  negative_cache {
      
  }

  http_client {

  }

  storage {
    blob_store_name                = "default"
    strict_content_type_validation = true
    write_policy                   = "ALLOW_ONCE"
  }

}