variable "path_pattern" {
  description = "Path pattern for the cache behavior"
}

variable "allowed_methods" {
  description = "Allowed methods"
  default     = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
}

variable "cached_methods" {
  description = "Cached methods"
  default     = ["GET", "HEAD", "OPTIONS"]
}

variable "target_origin_id" {
  description = "Target origin for the behavior"
  default     = null
}

variable "forward_cookies" {
  description = "Enable forwarding cookies or not"
  type        = string
  default     = "none"
}

variable "forwarded_cookies_whitelisted_names" {
  description = "List of cookie names to forward"
  type        = list(string)
  default     = []
}

variable "forward_headers" {
  description = "Headers to forward"
  type        = list(string)
  default     = []
}

variable "forward_query_string" {
  description = "Enable forwarding query strings"
  type        = bool
  default     = false
}

variable "forward_query_string_cache_keys" {
  description = "Query string cache keys to forward"
  type        = list(string)
  default     = []
}

variable "spa_enabled" {
  description = "Enables lambda@edge that rewrites origin-requests that do not have file extentions to {spa_index}"
  default     = false
}

variable "spa_index" {
  description = "Sets the default page to redirect to in a SPA when lambda@edge is enabled."
  default     = "/index.html"
}

variable "spa_lambda_arn" {
  description = "Sets the arn for the lamba function."
  default     = ""
}

variable "viewer_protocol_policy" {
  description = <<EOF
  Cloudfront viewer policy.
  Must be one of: allow-all, https-only, or redirect-to-https
EOF

  default = "redirect-to-https"
}

variable "min_ttl" {
  description = "Minimum TTL that can be set on an object."
  default     = 0
}

variable "default_ttl" {
  description = "TTL of an object when one is not set."
  default     = 3600
}

variable "max_ttl" {
  description = "Maximum TTL that can be set on an object"
  default     = 86400
}

variable "compress" {
  description = "Boolean - whether or not to use gzip compression on the cloudfront distribution."
  default     = false
}

variable "custom_error_responses" {
  description = ""
  default     = []
  type = list(object({
    error_code = number,
    # cachine_min_ttl    = number, # @todo Make this a thing
    response_page_path = string,
    response_code      = number
  }))
}
