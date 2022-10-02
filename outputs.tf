output "prefix" {
  value = local.prefix

  description = <<-END
    the constructed prefix.
    https:://go.s3d.club/tf/name#prefix
    END
}

output "release" {
  value = module.changes.release

  description = <<-END
    the release of the module.
    https:://go.s3d.club/tf/name#release
    END
}

output "tags" {
  value = local.tags

  description = <<-END
    the tags.
    https:://go.s3d.club/tf/name#tags
    END
}
