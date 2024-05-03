resource "newrelic_notification_destination" "webhook-destination" {
  for_each = var.destination
  name     = each.value.name
  type     = each.value.type

  property {
    key   = each.value.key
    value = each.value.value
  }
}

resource "newrelic_notification_channel" "webhook-channel" {
  for_each = var.channel
  name     = each.value.name
  type     = each.value.type


  destination_id = "${newrelic_notification_destination.webhook-destination[each.key].id}"
  product        = each.value.product


  property {
    key   = each.value.key
    value = each.value.value
  }
}

resource "newrelic_workflow" "workflow-example" {
  for_each              = var.workflow
  name                  = each.value.name
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = each.value.filter_name
    type = "FILTER"

    predicate {
      attribute = "labels.policyIds"
      operator  = "EXACTLY_MATCHES"
      values    = ["5265982"]
    }
  }

  dynamic "destination" {
    for_each = newrelic_notification_channel.webhook-channel
    content {
      channel_id = destination.value.id
    }
  }
}
