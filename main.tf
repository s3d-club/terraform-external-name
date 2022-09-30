locals {
  # The date segment on our names helps avoid collisions while also providing a
  # little bit of information about the name. This date is the pet's birthday
  # if needed the keepers will cause the the pet to change and when that
  # happens we get a new birthdate because we don't rename our pets. When we
  # get a new pet we get a new date.
  date_segment = var.disable_date ? null : formatdate("YYMMDD", time_static.this.rfc3339)

  # The new name is constructed to be unique but still nice to look at
  name_prefix = substr(lower(local.str), 0, var.size)

  # We replace the python name due to the confusion that can result for teams
  # that think of python as a technology.
  pet_name = replace(random_pet.this.id, "python", "human")

  # Depending on input we may add the segment before or after the existing
  # prefix
  str = replace(
    join("-", compact(
      var.as_pre_prefix ? [
        local.pet_name,
        var.name_segment,
        local.date_segment,
        var.name_prefix,
        ] : [
        var.name_prefix,
        var.name_segment,
        local.date_segment,
        local.pet_name,
      ])
  ), ".", "-")

  # Merge tags to add name
  tags = merge(module.change.tags, { "Name" = local.name_prefix })
}

# We have a name but we also have tags
module "change" {
  source = "git::https://github.com/s3d-club/terraform-external-data-changes?ref=0.0.7"

  path = var.path
  tags = var.tags
}

# We change the time_static anytime the pet changes
resource "time_static" "this" {
  triggers = random_pet.this.keepers
}

resource "random_pet" "this" {
  keepers = {
    # Change pet scope here occasionally force all new names and the associated
    # resource replacements.
    pet_scope = 0

    # The reason for the keeper is to force a new pet any time the requested
    # name changes.
    name_prefix  = var.name_prefix
    name_segment = var.name_segment
  }

  length = var.pet_length
}
