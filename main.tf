locals {
  forwarded_values = {
    cookies = {
      forward           = var.forward_cookies
      whitelisted_names = var.forwarded_cookies_whitelisted_names
    }
    headers                 = var.forward_headers
    query_string            = var.forward_query_string
    query_string_cache_keys = var.forward_query_string_cache_keys
  }
}
