variable "tags_tag_key_iam_bindings" {
  description = <<EOT
Map of tags_tag_key_iam_bindings, attributes below
Required:
    - members
    - role
    - tag_key
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members = set(string)
    role    = string
    tag_key = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

