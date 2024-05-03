# variable "destination" {
#   type = map(object({
#     name = string
#     type = list()
#     secure_url = map(object({
#       prefix        = string
#       secure_suffix = string
#     }))
#     property = map(object({
#       key   = string
#       value = string
#     }))
#   }))

# }

# variable "channel" {
#   type = any
# }
# variable "workflow" {
#   type = any
# }
# variable "destination" {
#   description = "Map of destination configurations"
#   type = map(object({
#     name          = string
#     type          = string
#     prefix        = string
#     secure_suffix = string
#     key           = string
#     value         = string
#   }))

# }




# variable "channel" {
#   description = "A map of notification channels"
#   type = map(object({
#     name           = string
#     type           = string
#     product        = string
#     key            = string
#     value          = string
#     destination_id = string
#   }))

# }


# variable "workflow" {
#   description = "A map of workflows"
#   type = map(object({
#     name        = string
#     filter_name = string
#   }))

# }
variable "workflow" {
  type = any
}
variable "channel" {
  type = any
}

variable "destination" {
  type = any
}
