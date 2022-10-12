locals {
  # The date segment on our names helps avoid collisions while also providing a
  # little bit of information about the name. This date is the pet's birthday
  # if needed the keepers will cause the the pet to change and when that
  # happens we get a new birthdate because we don't rename our pets. When we
  # get a new pet we get a new date.
  date_segment = var.disable_date ? null : formatdate("YYMMDD", time_static.this.rfc3339)

  # The new prefix is constructed to be unique but still nice to look at
  prefix = substr(lower(local.str), 0, var.length)

  # We replace the python name due to the confusion that can result for teams
  # that think of python as a technology.
  pet_name = replace(random_pet.this.id, "python", "znake")

  # Depending on input we may add the segment before or after the existing
  # prefix
  str = replace(
    join("-", compact(
      var.pet_first ? [
        local.pet_name,
        var.context,
        local.date_segment,
        ] : [
        var.context,
        local.pet_name,
        local.date_segment,
      ])
  ), ".", "-")

  # Merge tags to add name
  tags = merge(module.changes.tags, { "Name" = local.prefix })
}

# This module is the primary user of the changes module.
module "changes" {
  source = "git::https://github.com/s3d-club/terraform-external-changes?ref=v0.1.9"

  path = var.path
  tags = var.tags
}

# We change the time_static anytime the pet changes
resource "time_static" "this" {
  triggers = random_pet.this.keepers
}

resource "random_pet" "this" {
  # if the context changes we force a new name
  keepers = merge(var.keepers, {
    context = var.context
  })

  length = var.pet_length
}
