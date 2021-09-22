locals {
  #Tags
  tags = merge({
      creation_mode      = "tf",
      alerting-aks_module  = "true"
      creation_timestamp = timestamp(),
      }, var.Tags)
}