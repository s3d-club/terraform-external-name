variable "pet_first" {
  default = false
  type    = bool

  description = <<-END
    an option to include the pet name as the first component of the outputted name.
    https://go.s3d.club/tf/name#pet_first
    END
}

variable "context" {
  default = null
  type    = string

  description = <<-END
    a contextual component for the final prefix _(something like "ec2" works well here)_.
    https://go.s3d.club/tf/name#context
    END
}

variable "disable_date" {
  default = false
  type    = bool

  description = <<-END
    an option to disable the date component.
    https://go.s3d.club/tf/name#disable_date
    END
}

variable "keepers" {
  default = {}
  type    = map(string)

  description = <<-END
    an map of extra keepers for the pet and thus the name.
    https://go.s3d.club/tf/name#disable_date
    END
}


variable "length" {
  default = 63 # AWS S3 Bucket names are limited to a max len of 63.
  type    = number

  description = <<-END
    the maximum length of the name that will be returned.
    https://go.s3d.club/tf/name#length
    END
}

variable "path" {
  type = string

  description = <<-END
    the path for the module using the name.
    https://go.s3d.club/tf/name#path
    END
}

variable "pet_length" {
  default = 1
  type    = number

  description = <<-END
    the number of "pets" to include in the name
    https://go.s3d.club/tf/name#pet_length
    END
}

variable "tags" {
  type = map(string)

  description = <<-END
    the tags that will be included in output.
    https://go.s3d.club/tf/name#tags
    END
}
