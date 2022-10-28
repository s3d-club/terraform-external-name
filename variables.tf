variable "pet_first" {
  default = false
  type    = bool

  description = <<-EOT
    An option to include the pet name as the first component of the outputted name.
    EOT
}

variable "context" {
  default = null
  type    = string

  description = <<-EOT
    A contextual component for the prefix. A project name can be used here.
    EOT
}

variable "disable_date" {
  default = false
  type    = bool

  description = <<-EOT
    An option to disable the date component.
    EOT
}

variable "keepers" {
  default = {}
  type    = map(string)

  description = <<-EOT
    A map of extra `keepers` for the `random_pet` resource.
    EOT
}


variable "length" {
  type = number

  # On AWS, S3 Bucket names are limited to a max len of 63 so we use this as the
  # default
  default = 63

  description = <<-EOT
    The maximum length of the name that will be returned.
    EOT
}

variable "path" {
  type = string

  description = <<-EOT
    The path of the calling module.
    EOT
}

variable "pet_length" {
  default = 1
  type    = number

  description = <<-EOT
    The number of "pets" to include in the name.
    EOT
}

variable "tags" {
  type = map(string)

  description = <<-EOT
    The caller's tags; these will also be part of the output.
    EOT
}
