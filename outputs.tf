output "path_pattern" {
  value = var.path_pattern
}
output "allowed_methods" {
  value = var.allowed_methods
}
output "cached_methods" {
  value = var.cached_methods
}
output "target_origin_id" {
  value = var.target_origin_id
}
output "forwarded_values" {
  value = local.forwarded_values
}
output "viewer_protocol_policy" {
  value = var.viewer_protocol_policy
}
output "min_ttl" {
  value = var.min_ttl
}
output "default_ttl" {
  value = var.default_ttl
}
output "max_ttl" {
  value = var.max_ttl
}
output "compress" {
  value = var.compress
}
output "custom_error_responses" {
  value = var.custom_error_responses
}
output "spa_enabled" {
  value = var.spa_enabled
}
output "spa_index" {
  value = var.spa_index
}
output "spa_lambda_arn" {
  value = var.spa_lambda_arn
}