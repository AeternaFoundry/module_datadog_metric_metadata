variable "metric_metadata" {
  description = <<EOT
Map of metric_metadata, attributes below
Required:
    - metric
Optional:
    - description
    - per_unit
    - short_name
    - statsd_interval
    - type
    - unit
EOT

  type = map(object({
    metric          = string
    description     = optional(string)
    per_unit        = optional(string)
    short_name      = optional(string)
    statsd_interval = optional(number)
    type            = optional(string)
    unit            = optional(string)
  }))
}

