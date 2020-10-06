ui = true

storage "dynamodb" {
  region     = "us-east-1"
  table      = "vault"
  access_key = "changeme"
  secret_key = "changeme"
}

listener "tcp" {
  address     = "192.168.2.113:8200"
  tls_disable = 1
}

telemetry {
  publish_allocation_metrics = true
  publish_node_metrics       = true
  datadog_address = "192.168.2.113:8125"
  disable_hostname = true
  collection_interval = "10s"
}
