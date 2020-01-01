module "ordered_cache_behavior" {
  source       = "../."
  path_pattern = "/some/path"
}

output "test" {
  value = module.ordered_cache_behavior
}
