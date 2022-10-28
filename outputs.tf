output "prefix" {
  value = local.prefix

  description = <<-EOT
    the constructed prefix.
    https:://go.s3d.club/tf/name#prefix
    EOT
}

output "tags" {
  value = local.tags

  description = <<-EOT
    a map with tags that describe the content of `CHANGES.md`.
    https://go.s3d.club/tf/name#tags
    EOT
}

output "tags_with_name" {
  value = local.tags_with_name

  description = <<-EOT
    the tags for the module tags with an additional `Name` tag.
    https://go.s3d.club/tf/name#tags
    EOT
}
