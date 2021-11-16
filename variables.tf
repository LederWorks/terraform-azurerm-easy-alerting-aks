#### Subscription ####
variable "SubscriptionID" {
  description = "ID of the Subscription"
  type = any
  validation {
    condition = can(regex("\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b", var.SubscriptionID))
    error_message = "Must be a valid subscription id. Ex: 9e4e50cf-5a4a-4deb-a466-9086cd9e365b."
  }
}

#### Purpose ####
variable "Purpose" {
  description = "The purpose of the alert. Will be used in alert name and description."
  type = string
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

#####################################
#### AlertContainerCPUPercentage ####
#####################################

variable "AKSAlertContainerCPUPercentageCreated" {
  type    = bool
  default = false
}
variable "AKSAlertContainerCPUPercentageEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertContainerCPUPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertContainerCPUPercentageSeverity >= 0 && var.AKSAlertContainerCPUPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertContainerCPUPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertContainerCPUPercentageFrequency == "PT1M" || var.AKSAlertContainerCPUPercentageFrequency == "PT5M" || var.AKSAlertContainerCPUPercentageFrequency == "PT15M" || var.AKSAlertContainerCPUPercentageFrequency == "PT30M" || var.AKSAlertContainerCPUPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertContainerCPUPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertContainerCPUPercentageWindow == null || var.AKSAlertContainerCPUPercentageWindow == "PT1M" || var.AKSAlertContainerCPUPercentageWindow == "PT5M" || var.AKSAlertContainerCPUPercentageWindow == "PT15M" || var.AKSAlertContainerCPUPercentageWindow == "PT30M" || var.AKSAlertContainerCPUPercentageWindow == "PT1H" || var.AKSAlertContainerCPUPercentageWindow == "PT6H" || var.AKSAlertContainerCPUPercentageWindow == "PT2H" || var.AKSAlertContainerCPUPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertContainerCPUPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertContainerCPUPercentageThreshold" {
  type    = number
  default = 95
  validation {
      condition = (var.AKSAlertContainerCPUPercentageThreshold >= 1 && var.AKSAlertContainerCPUPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "AKSAlertContainerCPUPercentageNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertContainerCPUPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

########################################
#### AlertContainerMemoryPercentage ####
########################################

variable "AKSAlertContainerMemoryPercentageCreated" {
  type    = bool
  default = false
}
variable "AKSAlertContainerMemoryPercentageEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertContainerMemoryPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertContainerMemoryPercentageSeverity >= 0 && var.AKSAlertContainerMemoryPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertContainerMemoryPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertContainerMemoryPercentageFrequency == "PT1M" || var.AKSAlertContainerMemoryPercentageFrequency == "PT5M" || var.AKSAlertContainerMemoryPercentageFrequency == "PT15M" || var.AKSAlertContainerMemoryPercentageFrequency == "PT30M" || var.AKSAlertContainerMemoryPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertContainerMemoryPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertContainerMemoryPercentageWindow == null || var.AKSAlertContainerMemoryPercentageWindow == "PT1M" || var.AKSAlertContainerMemoryPercentageWindow == "PT5M" || var.AKSAlertContainerMemoryPercentageWindow == "PT15M" || var.AKSAlertContainerMemoryPercentageWindow == "PT30M" || var.AKSAlertContainerMemoryPercentageWindow == "PT1H" || var.AKSAlertContainerMemoryPercentageWindow == "PT6H" || var.AKSAlertContainerMemoryPercentageWindow == "PT2H" || var.AKSAlertContainerMemoryPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertContainerMemoryPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertContainerMemoryPercentageThreshold" {
  type    = number
  default = 95
  validation {
      condition = (var.AKSAlertContainerMemoryPercentageThreshold >= 1 && var.AKSAlertContainerMemoryPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "AKSAlertContainerMemoryPercentageNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertContainerMemoryPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

################################
#### AlertNodeCPUPercentage ####
################################

variable "AKSAlertNodeCPUPercentageCreated" {
  type    = bool
  default = false
}
variable "AKSAlertNodeCPUPercentageEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertNodeCPUPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertNodeCPUPercentageSeverity >= 0 && var.AKSAlertNodeCPUPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertNodeCPUPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertNodeCPUPercentageFrequency == "PT1M" || var.AKSAlertNodeCPUPercentageFrequency == "PT5M" || var.AKSAlertNodeCPUPercentageFrequency == "PT15M" || var.AKSAlertNodeCPUPercentageFrequency == "PT30M" || var.AKSAlertNodeCPUPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertNodeCPUPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertNodeCPUPercentageWindow == null || var.AKSAlertNodeCPUPercentageWindow == "PT1M" || var.AKSAlertNodeCPUPercentageWindow == "PT5M" || var.AKSAlertNodeCPUPercentageWindow == "PT15M" || var.AKSAlertNodeCPUPercentageWindow == "PT30M" || var.AKSAlertNodeCPUPercentageWindow == "PT1H" || var.AKSAlertNodeCPUPercentageWindow == "PT6H" || var.AKSAlertNodeCPUPercentageWindow == "PT2H" || var.AKSAlertNodeCPUPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertNodeCPUPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertNodeCPUPercentageThreshold" {
  type    = number
  default = 80
  validation {
      condition = (var.AKSAlertNodeCPUPercentageThreshold >= 1 && var.AKSAlertNodeCPUPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "AKSAlertNodeCPUPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

###################################
#### AlertNodeMemoryPercentage ####
###################################

variable "AKSAlertNodeMemoryPercentageCreated" {
  type    = bool
  default = false
}
variable "AKSAlertNodeMemoryPercentageEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertNodeMemoryPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertNodeMemoryPercentageSeverity >= 0 && var.AKSAlertNodeMemoryPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertNodeMemoryPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertNodeMemoryPercentageFrequency == "PT1M" || var.AKSAlertNodeMemoryPercentageFrequency == "PT5M" || var.AKSAlertNodeMemoryPercentageFrequency == "PT15M" || var.AKSAlertNodeMemoryPercentageFrequency == "PT30M" || var.AKSAlertNodeMemoryPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertNodeMemoryPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertNodeMemoryPercentageWindow == null || var.AKSAlertNodeMemoryPercentageWindow == "PT1M" || var.AKSAlertNodeMemoryPercentageWindow == "PT5M" || var.AKSAlertNodeMemoryPercentageWindow == "PT15M" || var.AKSAlertNodeMemoryPercentageWindow == "PT30M" || var.AKSAlertNodeMemoryPercentageWindow == "PT1H" || var.AKSAlertNodeMemoryPercentageWindow == "PT6H" || var.AKSAlertNodeMemoryPercentageWindow == "PT2H" || var.AKSAlertNodeMemoryPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertNodeMemoryPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertNodeMemoryPercentageThreshold" {
  type    = number
  default = 80
  validation {
      condition = (var.AKSAlertNodeMemoryPercentageThreshold >= 1 && var.AKSAlertNodeMemoryPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "AKSAlertNodeMemoryPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

#################################
#### AlertNodeDiskPercentage ####
#################################

variable "AKSAlertNodeDiskPercentageCreated" {
  type    = bool
  default = false
}
variable "AKSAlertNodeDiskPercentageEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertNodeDiskPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertNodeDiskPercentageSeverity >= 0 && var.AKSAlertNodeDiskPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertNodeDiskPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertNodeDiskPercentageFrequency == "PT1M" || var.AKSAlertNodeDiskPercentageFrequency == "PT5M" || var.AKSAlertNodeDiskPercentageFrequency == "PT15M" || var.AKSAlertNodeDiskPercentageFrequency == "PT30M" || var.AKSAlertNodeDiskPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertNodeDiskPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertNodeDiskPercentageWindow == null || var.AKSAlertNodeDiskPercentageWindow == "PT1M" || var.AKSAlertNodeDiskPercentageWindow == "PT5M" || var.AKSAlertNodeDiskPercentageWindow == "PT15M" || var.AKSAlertNodeDiskPercentageWindow == "PT30M" || var.AKSAlertNodeDiskPercentageWindow == "PT1H" || var.AKSAlertNodeDiskPercentageWindow == "PT6H" || var.AKSAlertNodeDiskPercentageWindow == "PT2H" || var.AKSAlertNodeDiskPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertNodeDiskPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertNodeDiskPercentageThreshold" {
  type    = number
  default = 80
  validation {
      condition = (var.AKSAlertNodeDiskPercentageThreshold >= 1 && var.AKSAlertNodeDiskPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "AKSAlertNodeDiskPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

###########################
#### AlertPVPercentage ####
###########################

variable "AKSAlertPVPercentageCreated" {
  type    = bool
  default = false
}
variable "AKSAlertPVPercentageEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertPVPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertPVPercentageSeverity >= 0 && var.AKSAlertPVPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertPVPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertPVPercentageFrequency == "PT1M" || var.AKSAlertPVPercentageFrequency == "PT5M" || var.AKSAlertPVPercentageFrequency == "PT15M" || var.AKSAlertPVPercentageFrequency == "PT30M" || var.AKSAlertPVPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertPVPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertPVPercentageWindow == null || var.AKSAlertPVPercentageWindow == "PT1M" || var.AKSAlertPVPercentageWindow == "PT5M" || var.AKSAlertPVPercentageWindow == "PT15M" || var.AKSAlertPVPercentageWindow == "PT30M" || var.AKSAlertPVPercentageWindow == "PT1H" || var.AKSAlertPVPercentageWindow == "PT6H" || var.AKSAlertPVPercentageWindow == "PT2H" || var.AKSAlertPVPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertPVPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertPVPercentageThreshold" {
  type    = number
  default = 95
  validation {
      condition = (var.AKSAlertPVPercentageThreshold >= 1 && var.AKSAlertPVPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "AKSAlertPVPercentagePods" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertPVPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

#######################################
#### AlertRestartingContainerCount ####
#######################################

variable "AKSAlertRestartingContainerCountCreated" {
  type    = bool
  default = false
}
variable "AKSAlertRestartingContainerCountEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertRestartingContainerCountSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertRestartingContainerCountSeverity >= 0 && var.AKSAlertRestartingContainerCountSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertRestartingContainerCountFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertRestartingContainerCountFrequency == "PT1M" || var.AKSAlertRestartingContainerCountFrequency == "PT5M" || var.AKSAlertRestartingContainerCountFrequency == "PT15M" || var.AKSAlertRestartingContainerCountFrequency == "PT30M" || var.AKSAlertRestartingContainerCountFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertRestartingContainerCountWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertRestartingContainerCountWindow == null || var.AKSAlertRestartingContainerCountWindow == "PT1M" || var.AKSAlertRestartingContainerCountWindow == "PT5M" || var.AKSAlertRestartingContainerCountWindow == "PT15M" || var.AKSAlertRestartingContainerCountWindow == "PT30M" || var.AKSAlertRestartingContainerCountWindow == "PT1H" || var.AKSAlertRestartingContainerCountWindow == "PT6H" || var.AKSAlertRestartingContainerCountWindow == "PT2H" || var.AKSAlertRestartingContainerCountWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertRestartingContainerCountAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertRestartingContainerCountThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.AKSAlertRestartingContainerCountThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "AKSAlertRestartingContainerCountNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertRestartingContainerCountActionGroupIDs" {
  type    = set(string)
  default = []
}

################################
#### AlertPodsInFailedState ####
################################

variable "AKSAlertPodsInFailedStateCreated" {
  type    = bool
  default = false
}
variable "AKSAlertPodsInFailedStateEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertPodsInFailedStateSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertPodsInFailedStateSeverity >= 0 && var.AKSAlertPodsInFailedStateSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertPodsInFailedStateFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertPodsInFailedStateFrequency == "PT1M" || var.AKSAlertPodsInFailedStateFrequency == "PT5M" || var.AKSAlertPodsInFailedStateFrequency == "PT15M" || var.AKSAlertPodsInFailedStateFrequency == "PT30M" || var.AKSAlertPodsInFailedStateFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertPodsInFailedStateWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertPodsInFailedStateWindow == null || var.AKSAlertPodsInFailedStateWindow == "PT1M" || var.AKSAlertPodsInFailedStateWindow == "PT5M" || var.AKSAlertPodsInFailedStateWindow == "PT15M" || var.AKSAlertPodsInFailedStateWindow == "PT30M" || var.AKSAlertPodsInFailedStateWindow == "PT1H" || var.AKSAlertPodsInFailedStateWindow == "PT6H" || var.AKSAlertPodsInFailedStateWindow == "PT2H" || var.AKSAlertPodsInFailedStateWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertPodsInFailedStateAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertPodsInFailedStateThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.AKSAlertPodsInFailedStateThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "AKSAlertPodsInFailedStateNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertPodsInFailedStateActionGroupIDs" {
  type    = set(string)
  default = []
}

###########################
#### AlertNodeNotReady ####
###########################

variable "AKSAlertNodeNotReadyCreated" {
  type    = bool
  default = false
}
variable "AKSAlertNodeNotReadyEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertNodeNotReadySeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertNodeNotReadySeverity >= 0 && var.AKSAlertNodeNotReadySeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertNodeNotReadyFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertNodeNotReadyFrequency == "PT1M" || var.AKSAlertNodeNotReadyFrequency == "PT5M" || var.AKSAlertNodeNotReadyFrequency == "PT15M" || var.AKSAlertNodeNotReadyFrequency == "PT30M" || var.AKSAlertNodeNotReadyFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertNodeNotReadyWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertNodeNotReadyWindow == null || var.AKSAlertNodeNotReadyWindow == "PT1M" || var.AKSAlertNodeNotReadyWindow == "PT5M" || var.AKSAlertNodeNotReadyWindow == "PT15M" || var.AKSAlertNodeNotReadyWindow == "PT30M" || var.AKSAlertNodeNotReadyWindow == "PT1H" || var.AKSAlertNodeNotReadyWindow == "PT6H" || var.AKSAlertNodeNotReadyWindow == "PT2H" || var.AKSAlertNodeNotReadyWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertNodeNotReadyAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertNodeNotReadyThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.AKSAlertNodeNotReadyThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "AKSAlertNodeNotReadyActionGroupIDs" {
  type    = set(string)
  default = []
}

##################################
#### AlertOOMKilledContainers ####
##################################

variable "AKSAlertOOMKilledContainersCreated" {
  type    = bool
  default = false
}
variable "AKSAlertOOMKilledContainersEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertOOMKilledContainersSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertOOMKilledContainersSeverity >= 0 && var.AKSAlertOOMKilledContainersSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertOOMKilledContainersFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertOOMKilledContainersFrequency == "PT1M" || var.AKSAlertOOMKilledContainersFrequency == "PT5M" || var.AKSAlertOOMKilledContainersFrequency == "PT15M" || var.AKSAlertOOMKilledContainersFrequency == "PT30M" || var.AKSAlertOOMKilledContainersFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertOOMKilledContainersWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertOOMKilledContainersWindow == null || var.AKSAlertOOMKilledContainersWindow == "PT1M" || var.AKSAlertOOMKilledContainersWindow == "PT5M" || var.AKSAlertOOMKilledContainersWindow == "PT15M" || var.AKSAlertOOMKilledContainersWindow == "PT30M" || var.AKSAlertOOMKilledContainersWindow == "PT1H" || var.AKSAlertOOMKilledContainersWindow == "PT6H" || var.AKSAlertOOMKilledContainersWindow == "PT2H" || var.AKSAlertOOMKilledContainersWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertOOMKilledContainersAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertOOMKilledContainersThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.AKSAlertOOMKilledContainersThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "AKSAlertOOMKilledContainersNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertOOMKilledContainersActionGroupIDs" {
  type    = set(string)
  default = []
}

#################################
#### AlertPodReadyPercentage ####
#################################

variable "AKSAlertPodsReadyPercentageCreated" {
  type    = bool
  default = false
}
variable "AKSAlertPodsReadyPercentageEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertPodsReadyPercentageSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertPodsReadyPercentageSeverity >= 0 && var.AKSAlertPodsReadyPercentageSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertPodsReadyPercentageFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertPodsReadyPercentageFrequency == "PT1M" || var.AKSAlertPodsReadyPercentageFrequency == "PT5M" || var.AKSAlertPodsReadyPercentageFrequency == "PT15M" || var.AKSAlertPodsReadyPercentageFrequency == "PT30M" || var.AKSAlertPodsReadyPercentageFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertPodsReadyPercentageWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertPodsReadyPercentageWindow == null || var.AKSAlertPodsReadyPercentageWindow == "PT1M" || var.AKSAlertPodsReadyPercentageWindow == "PT5M" || var.AKSAlertPodsReadyPercentageWindow == "PT15M" || var.AKSAlertPodsReadyPercentageWindow == "PT30M" || var.AKSAlertPodsReadyPercentageWindow == "PT1H" || var.AKSAlertPodsReadyPercentageWindow == "PT6H" || var.AKSAlertPodsReadyPercentageWindow == "PT2H" || var.AKSAlertPodsReadyPercentageWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertPodsReadyPercentageAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertPodsReadyPercentageThreshold" {
  type    = number
  default = 95
  validation {
      condition = (var.AKSAlertPodsReadyPercentageThreshold >= 1 && var.AKSAlertPodsReadyPercentageThreshold <= 100)
      error_message = "Value must be between 1-100."
  }
}
variable "AKSAlertPodsReadyPercentageNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertPodsReadyPercentageActionGroupIDs" {
  type    = set(string)
  default = []
}

#############################
#### AlertStaleJobsCount ####
#############################

variable "AKSAlertStaleJobsCountCreated" {
  type    = bool
  default = false
}
variable "AKSAlertStaleJobsCountEnabled" {
  type    = bool
  default = true
}
variable "AKSAlertStaleJobsCountSeverity" {
  description = "The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3."
  type    = number
  default = 3
  validation {
      condition = (var.AKSAlertStaleJobsCountSeverity >= 0 && var.AKSAlertStaleJobsCountSeverity <= 4)
      error_message = "Value must be between 0-4. The lower the higher."
  }
}
variable "AKSAlertStaleJobsCountFrequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M."
  type    = string
  default = "PT1M"
  validation {
      condition = (var.AKSAlertStaleJobsCountFrequency == "PT1M" || var.AKSAlertStaleJobsCountFrequency == "PT5M" || var.AKSAlertStaleJobsCountFrequency == "PT15M" || var.AKSAlertStaleJobsCountFrequency == "PT30M" || var.AKSAlertStaleJobsCountFrequency == "PT1H" )
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M and PT1H."
  }
}
variable "AKSAlertStaleJobsCountWindow" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency."
  type    = string
  default = null
  validation {
      condition = (var.AKSAlertStaleJobsCountWindow == null || var.AKSAlertStaleJobsCountWindow == "PT1M" || var.AKSAlertStaleJobsCountWindow == "PT5M" || var.AKSAlertStaleJobsCountWindow == "PT15M" || var.AKSAlertStaleJobsCountWindow == "PT30M" || var.AKSAlertStaleJobsCountWindow == "PT1H" || var.AKSAlertStaleJobsCountWindow == "PT6H" || var.AKSAlertStaleJobsCountWindow == "PT2H" || var.AKSAlertStaleJobsCountWindow == "PT1D")
      error_message = "Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D."
  }
}
variable "AKSAlertStaleJobsCountAutoResolve" {
  type    = bool
  default = true
}
variable "AKSAlertStaleJobsCountThreshold" {
  type    = number
  default = 0
  validation {
      condition = var.AKSAlertStaleJobsCountThreshold >= 0
      error_message = "Value must be a positive number or 0."
  }
}
variable "AKSAlertStaleJobsCountNameSpaces" {
  type    = list(string)
  default = ["*"]
}
variable "AKSAlertStaleJobsCountActionGroupIDs" {
  type    = set(string)
  default = []
}