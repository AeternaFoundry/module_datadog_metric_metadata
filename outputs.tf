output "metric_metadata_id" {
  description = "Map of id values across all metric_metadata, keyed the same as var.metric_metadata except keys with no id are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metric_metadata_description" {
  description = "Map of description values across all metric_metadata, keyed the same as var.metric_metadata except keys with no description are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.description if v.description != null && length(v.description) > 0 }
}
output "metric_metadata_metric" {
  description = "Map of metric values across all metric_metadata, keyed the same as var.metric_metadata except keys with no metric are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.metric if v.metric != null && length(v.metric) > 0 }
}
output "metric_metadata_per_unit" {
  description = "Map of per_unit values across all metric_metadata, keyed the same as var.metric_metadata except keys with no per_unit are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.per_unit if v.per_unit != null && length(v.per_unit) > 0 }
}
output "metric_metadata_short_name" {
  description = "Map of short_name values across all metric_metadata, keyed the same as var.metric_metadata except keys with no short_name are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.short_name if v.short_name != null && length(v.short_name) > 0 }
}
output "metric_metadata_statsd_interval" {
  description = "Map of statsd_interval values across all metric_metadata, keyed the same as var.metric_metadata except keys with no statsd_interval are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.statsd_interval if v.statsd_interval != null }
}
output "metric_metadata_type" {
  description = "Map of type values across all metric_metadata, keyed the same as var.metric_metadata except keys with no type are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.type if v.type != null && length(v.type) > 0 }
}
output "metric_metadata_unit" {
  description = "Map of unit values across all metric_metadata, keyed the same as var.metric_metadata except keys with no unit are omitted"
  value       = { for k, v in datadog_metric_metadata.metric_metadata : k => v.unit if v.unit != null && length(v.unit) > 0 }
}

