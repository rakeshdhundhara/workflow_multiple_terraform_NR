
destination = {

  "0" = {
    name  = "webhook"
    type  = "WEBHOOK"
    key   = "url"
    value = "https://webhook.site/#!/view/a042e191-360c-4703-b5b3-716df025b115/8956d33e-d1ec-494e-b2c1-31ab1721c96d/1"
  }
  "1" = {
    name  = "email"
    type  = "EMAIL"
    key   = "email"
    value = "rakesh.kumar01@cloudeq.com"
  }
}


channel = {
  "0" = {
    name    = "webhook-channel2"
    type    = "WEBHOOK"
    product = "IINT"
    key     = "customDetailsEmail"
    value   = "issue id - {{issueId}}"
  }

  "1" = {
    name    = "email-channel3"
    type    = "EMAIL"
    product = "IINT"
    key     = "email"
    value   = "rakesh.kumar01@cloudeq.com"


  }
}
workflow = {
  "0" = {
    name        = "workflow_multiple_channel"
    filter_name = "Filter-name"
  }
}
