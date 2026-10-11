variable "optimizer_profile_levels_lookup" {
  description = <<EOT
Map of optimizer_profile_levels_lookup, attributes below
Required:
    - compartment_id
    - compartment_id_in_subtree
Optional:
    - name
    - recommendation_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    compartment_id_in_subtree = bool
    name                      = optional(string)
    recommendation_name       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

