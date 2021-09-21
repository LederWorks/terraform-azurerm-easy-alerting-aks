#### Subscription ####
variable "SubscriptionID" {
  description = "ID of the Subscription"
  type = any
  validation {
    condition = can(regex("\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b", var.SubscriptionID))
    error_message = "Must be a valid subscription id. Ex: 9e4e50cf-5a4a-4deb-a466-9086cd9e365b."
  }
}

#### Tags ####
variable "Tags" {
  description = "BYO Tags, preferrable from a local on your side :D"
  type = map(string)
}

#### AKS Alerts ####
variable "AKSResourceGroupObject" {
  description = "AKS cluster resource group"
  type = any
  default = null
}
variable "AKSClusterName" {
  description = "AKS cluster name"
  type = any
  default = null
}

### AlertContainerCPUPercentage
variable "AlertContainerCPUPercentageCreated" {
  type    = bool
  default = false
}
variable "AlertContainerCPUPercentageEnabled" {
  type    = bool
  default = true
}
variable "AlertContainerCPUPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AlertContainerCPUPercentageSeverity >= 0 && var.AlertContainerCPUPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AlertContainerCPUPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AlertContainerCPUPercentageFrequency == "PT1M" || var.AlertContainerCPUPercentageFrequency == "PT5M" || var.AlertContainerCPUPercentageFrequency == "PT15M" || var.AlertContainerCPUPercentageFrequency == "PT30M" || var.AlertContainerCPUPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AlertContainerCPUPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AlertContainerCPUPercentageWindow == null || var.AlertContainerCPUPercentageWindow == "PT1M" || var.AlertContainerCPUPercentageWindow == "PT5M" || var.AlertContainerCPUPercentageWindow == "PT15M" || var.AlertContainerCPUPercentageWindow == "PT30M" || var.AlertContainerCPUPercentageWindow == "PT1H" || var.AlertContainerCPUPercentageWindow == "PT6H" || var.AlertContainerCPUPercentageWindow == "PT2H" || var.AlertContainerCPUPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AlertContainerCPUPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AlertContainerCPUPercentageThreshold" {
  type    = number
  default = 95
}
variable "AlertContainerCPUPercentageNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AlertContainerCPUPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

/* #AlertContainerWorkingSetMemoryPercentageEnabled
variable "AlertContainerWorkingSetMemoryPercentageEnabled" {
  type    = bool
  default = false
}
#AlertNodeCPUPercentageEnabled
variable "AlertNodeCPUPercentageEnabled" {
  type    = bool
  default = false
}
#AlertNodeWorkingSetMemoryPercentageEnabled
variable "AlertNodeWorkingSetMemoryPercentageEnabled" {
  type    = bool
  default = false
}
#AlertNodeDiskUsagePercentageEnabled
variable "AlertNodeDiskUsagePercentageEnabled" {
  type    = bool
  default = false
}
#AlertPVUsagePercentageEnabled
variable "AlertPVUsagePercentageEnabled" {
  type    = bool
  default = false
}
#AlertRestartingContainerCountEnabled
variable "AlertRestartingContainerCountEnabled" {
  type    = bool
  default = false
}
#AlertPodsInFailedStateEnabled
variable "AlertPodsInFailedStateEnabled" {
  type    = bool
  default = false
}
#AlertNodeNotReadyEnabled
variable "AlertNodeNotReadyEnabled" {
  type    = bool
  default = false
}
#AlertOOMKilledContainersEnabled
variable "AlertOOMKilledContainersEnabled" {
  type    = bool
  default = false
}
#AlertPodReadyPercentageEnabled
variable "AlertPodReadyPercentageEnabled" {
  type    = bool
  default = false
}
#AlertStaleJobsCountEnabled
variable "AlertStaleJobsCountEnabled" {
  type    = bool
  default = false
}
 */