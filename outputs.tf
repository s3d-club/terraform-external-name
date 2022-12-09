output "prefix" {
  value = local.prefix

  description = <<-EOT
    The name prefix.
    EOT
}

output "release" {
  value = module.changes.release

  description = <<-EOT
    The current release.
    EOT
}

output "tags" {
  value = local.tags

  description = <<-EOT
    A map with tags that describe the content of `CHANGES.md`.
    EOT
}

output "tags_with_name" {
  value = local.tags_with_name

  description = <<-EOT
    The tags for the module tags with an additional `Name` tag.
    EOT
}
