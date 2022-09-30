variable "as_pre_prefix" {
  default = false
  type    = bool

  description = <<-END
    Add Segment as a Pre Prefix
    https://go.s3d.club/tf/exrn/name-tags#as_pre_prefix
    END
}

variable "disable_date" {
  default = false
  type    = bool

  description = <<-END
    Disable Date Segment
    https://go.s3d.club/tf/exrn/name-tags#disabe_date
    END
}

variable "name_prefix" {
  default = null
  type    = string

  description = <<-END
    Name Prefix
    https://go.s3d.club/tf/exrn/name-tags#name_prefix
    END
}

variable "name_segment" {
  default = null
  type    = string

  description = <<-END
    Name Segment
    https://go.s3d.club/tf/exrn/name-tags#name_segment
    END
}

variable "path" {
  type = string

  description = <<-END
    Path
    https://go.s3d.club/tf/exrn/name-tags#path
    END
}

variable "pet_length" {
  default = 1
  type    = number

  description = <<-END
    Pet Names
    https://go.s3d.club/tf/exrn/name-tags#pet_length
    END
}

variable "size" {
  default = 64
  type    = number

  description = <<-END
    Tags
    https://go.s3d.club/tf/exrn/name-tags#size
    END
}

variable "tags" {
  type = map(string)

  description = <<-END
    Tags
    https://go.s3d.club/tf/exrn/name-tags#tags
    END
}
