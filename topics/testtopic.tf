resource "confluent_kafka_topic" "testtopic" {
  topic_name    = "testtopic"
  kafka_cluster {
    id = var.kafka_cluster_id
  }
  rest_endpoint = var.kafka_rest_endpoint
  credentials {
    key    = var.kafka_api_key
    secret = var.kafka_api_secret
  }
}