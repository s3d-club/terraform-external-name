output "change" {
  value = module.change

  description = <<-END
		The Change Module

		Notes are [HERE](https://go.s3d.club/tf/exrn/tags)
    END
}

output "name_prefix" {
  value = local.name_prefix

  description = <<-END
		Name Prefix

		Notes are [HERE](https://go.s3d.club/tf/exrn/name-tags#name_prefix)
		END
}

output "tags" {
  value = local.tags

  description = <<-END
		Tags with `Name` merged

		Notes are [HERE](https://go.s3d.club/tf/extrn/tags)
    END
}
