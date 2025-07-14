
resource "confluent_kafka_acl" "testtopicsa-read-acl" {
  kafka_cluster {
    id = var.kafka_cluster_id
  }
  resource_type = "TOPIC"
  resource_name = "testtopic"
  pattern_type  = "LITERAL"
  principal     = "User:${confluent_service_account.testtopicsa.id}"
  host          = "*"
  operation     = "READ"
  permission    = "ALLOW"
  rest_endpoint = var.kafka_rest_endpoint
  credentials {
    key    = var.kafka_api_key
    secret = var.kafka_api_secret
  }
}


