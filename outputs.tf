output "prefix" {
  value = local.prefix

  description = <<-EOT
    the constructed prefix.
    EOT
}

output "tags" {
  value = local.tags

  description = <<-EOT
    a map with tags that describe the content of `CHANGES.md`.
    EOT
}

output "tags_with_name" {
  value = local.tags_with_name

  description = <<-EOT
    the tags for the module tags with an additional `Name` tag.
    EOT
}
