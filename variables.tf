variable "pet_first" {
  default = false
  type    = bool

  description = <<-EOT
    an option to include the pet name as the first component of the outputted name.
    https://go.s3d.club/tf/name#pet_first
    EOT
}

variable "context" {
  default = null
  type    = string

  description = <<-EOT
    a contextual component for the prefix _(a project name can be used here)_.
    https://go.s3d.club/tf/name#context
    EOT
}

variable "disable_date" {
  default = false
  type    = bool

  description = <<-EOT
    an option to disable the date component.
    https://go.s3d.club/tf/name#disable_date
    EOT
}

variable "keepers" {
  default = {}
  type    = map(string)

  description = <<-EOT
    an map of extra keepers for the pet and thus the name.
    https://go.s3d.club/tf/name#keepers
    EOT
}


variable "length" {
  default = 63 # AWS S3 Bucket names are limited to a max len of 63.
  type    = number

  description = <<-EOT
    the maximum length of the name that will be returned.
    https://go.s3d.club/tf/name#length
    EOT
}

variable "path" {
  type = string

  description = <<-EOT
    the path for the module using the name.
    https://go.s3d.club/tf/name#path
    EOT
}

variable "pet_length" {
  default = 1
  type    = number

  description = <<-EOT
    the number of "pets" to include in the name
    https://go.s3d.club/tf/name#pet_length
    EOT
}

variable "tags" {
  type = map(string)

  description = <<-EOT
    the tags that will be part of the output.
    https://go.s3d.club/tf/name#tags
    EOT
}
