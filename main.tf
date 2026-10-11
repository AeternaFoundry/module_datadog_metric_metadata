resource "datadog_metric_metadata" "metric_metadata" {
  for_each = var.metric_metadata

  metric          = each.value.metric
  description     = each.value.description
  per_unit        = each.value.per_unit
  short_name      = each.value.short_name
  statsd_interval = each.value.statsd_interval
  type            = each.value.type
  unit            = each.value.unit
}

