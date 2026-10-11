output "optimizer_profile_levels_lookup_id" {
  description = "Map of id values across all optimizer_profile_levels_lookup, keyed the same as var.optimizer_profile_levels_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_optimizer_profile_levels.optimizer_profile_levels_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "optimizer_profile_levels_lookup_compartment_id" {
  description = "Map of compartment_id values across all optimizer_profile_levels_lookup, keyed the same as var.optimizer_profile_levels_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_optimizer_profile_levels.optimizer_profile_levels_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "optimizer_profile_levels_lookup_compartment_id_in_subtree" {
  description = "Map of compartment_id_in_subtree values across all optimizer_profile_levels_lookup, keyed the same as var.optimizer_profile_levels_lookup except keys with no compartment_id_in_subtree are omitted"
  value       = { for k, v in data.oci_optimizer_profile_levels.optimizer_profile_levels_lookup : k => v.compartment_id_in_subtree if v.compartment_id_in_subtree != null }
}
output "optimizer_profile_levels_lookup_filter" {
  description = "Map of filter values across all optimizer_profile_levels_lookup, keyed the same as var.optimizer_profile_levels_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_optimizer_profile_levels.optimizer_profile_levels_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "optimizer_profile_levels_lookup_name" {
  description = "Map of name values across all optimizer_profile_levels_lookup, keyed the same as var.optimizer_profile_levels_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_optimizer_profile_levels.optimizer_profile_levels_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "optimizer_profile_levels_lookup_profile_level_collection" {
  description = "Map of profile_level_collection values across all optimizer_profile_levels_lookup, keyed the same as var.optimizer_profile_levels_lookup except keys with no profile_level_collection are omitted"
  value       = { for k, v in data.oci_optimizer_profile_levels.optimizer_profile_levels_lookup : k => v.profile_level_collection if v.profile_level_collection != null && length(v.profile_level_collection) > 0 }
}
output "optimizer_profile_levels_lookup_recommendation_name" {
  description = "Map of recommendation_name values across all optimizer_profile_levels_lookup, keyed the same as var.optimizer_profile_levels_lookup except keys with no recommendation_name are omitted"
  value       = { for k, v in data.oci_optimizer_profile_levels.optimizer_profile_levels_lookup : k => v.recommendation_name if v.recommendation_name != null && length(v.recommendation_name) > 0 }
}

