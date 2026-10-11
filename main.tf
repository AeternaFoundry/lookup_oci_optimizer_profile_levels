data "oci_optimizer_profile_levels" "optimizer_profile_levels_lookup" {
  for_each = var.optimizer_profile_levels_lookup

  compartment_id            = each.value.compartment_id
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  name                      = each.value.name
  recommendation_name       = each.value.recommendation_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

