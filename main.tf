#### AKS Alerts ####

#################################
#### Average container cpu % ####
#################################

resource "azurerm_monitor_metric_alert" "alert_aks-container-cpu-percentage" {
  count               = var.AKSAlertContainerCPUPercentageCreated == false ? 0 : 1
  name                = "AKS_Container_CPU_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Container CPU Percentage"
  severity            = var.AKSAlertContainerCPUPercentageSeverity
  enabled             = var.AKSAlertContainerCPUPercentageEnabled
  frequency           = var.AKSAlertContainerCPUPercentageFrequency
  window_size         = coalesce(var.AKSAlertContainerCPUPercentageWindow, var.AKSAlertContainerCPUPercentageFrequency)
  auto_mitigate       = var.AKSAlertContainerCPUPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/containers"
    metric_name      = "cpuExceededPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertContainerCPUPercentageThreshold

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AKSAlertContainerCPUPercentageNameSpaces
    }

    dimension {
        name     = "controllerName"
        operator = "Include"
        values   = ["*"]
    }
  }

  dynamic "action" {
    for_each = var.AKSAlertContainerCPUPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

####################################
#### Average container memory % ####
####################################

resource "azurerm_monitor_metric_alert" "alert_aks-container-memory-percentage" {
  count               = var.AKSAlertContainerMemoryPercentageCreated == false ? 0 : 1
  name                = "AKS_Container_Memory_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Container Memory Percentage"
  severity            = var.AKSAlertContainerMemoryPercentageSeverity
  enabled             = var.AKSAlertContainerMemoryPercentageEnabled
  frequency           = var.AKSAlertContainerMemoryPercentageFrequency
  window_size         = coalesce(var.AKSAlertContainerMemoryPercentageWindow, var.AKSAlertContainerMemoryPercentageFrequency)
  auto_mitigate       = var.AKSAlertContainerMemoryPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/containers"
    metric_name      = "memoryWorkingSetExceededPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertContainerMemoryPercentageThreshold

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AKSAlertContainerMemoryPercentageNameSpaces
    }

    dimension {
      name     = "controllerName"
      operator = "Include"
      values   = ["*"]
    }
  }

  dynamic "action" {
    for_each = var.AKSAlertContainerMemoryPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

############################
#### Average node cpu % ####
############################

resource "azurerm_monitor_metric_alert" "alert_aks-node-cpu-percentage" {
  count               = var.AKSAlertNodeCPUPercentageCreated == false ? 0 : 1
  name                = "AKS_Node_CPU_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node CPU Percentage"
  severity            = var.AKSAlertNodeCPUPercentageSeverity
  enabled             = var.AKSAlertNodeCPUPercentageEnabled
  frequency           = var.AKSAlertNodeCPUPercentageFrequency
  window_size         = coalesce(var.AKSAlertNodeCPUPercentageWindow, var.AKSAlertNodeCPUPercentageFrequency)
  auto_mitigate       = var.AKSAlertNodeCPUPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "cpuUsagePercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertNodeCPUPercentageThreshold

    dimension {
      name     = "host"
      operator = "Include"
      values   = ["*"]
    }    
  }

  dynamic "action" {
    for_each = var.AKSAlertNodeCPUPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

###############################
#### Average node memory % ####
###############################

resource "azurerm_monitor_metric_alert" "alert_aks-node-memory-percentage" {
  count               = var.AKSAlertNodeMemoryPercentageCreated == false ? 0 : 1
  name                = "AKS_Node_Memory_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node Memory Percentage"
  severity            = var.AKSAlertNodeMemoryPercentageSeverity
  enabled             = var.AKSAlertNodeMemoryPercentageEnabled
  frequency           = var.AKSAlertNodeMemoryPercentageFrequency
  window_size         = coalesce(var.AKSAlertNodeMemoryPercentageWindow, var.AKSAlertNodeMemoryPercentageFrequency)
  auto_mitigate       = var.AKSAlertNodeMemoryPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "memoryWorkingSetPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertNodeMemoryPercentageThreshold

    dimension {
      name     = "host"
      operator = "Include"
      values   = ["*"]
    }
  }
    
  dynamic "action" {
    for_each = var.AKSAlertNodeMemoryPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#############################
#### Average node disk % ####
#############################

resource "azurerm_monitor_metric_alert" "alert_aks-node-disk-usage-percentage" {
  count               = var.AKSAlertNodeDiskPercentageCreated == false ? 0 : 1
  name                = "AKS_Node_Disk_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node Disk Percentage"
  severity            = var.AKSAlertNodeDiskPercentageSeverity
  enabled             = var.AKSAlertNodeDiskPercentageEnabled
  frequency           = var.AKSAlertNodeDiskPercentageFrequency
  window_size         = coalesce(var.AKSAlertNodeDiskPercentageWindow, var.AKSAlertNodeDiskPercentageFrequency)
  auto_mitigate       = var.AKSAlertNodeDiskPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "DiskUsedPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertNodeDiskPercentageThreshold

    dimension {
      name     = "host"
      operator = "Include"
      values   = ["*"]
    }

    dimension {
      name     = "device"
      operator = "Include"
      values   = ["*"]
    }
  }
    
  dynamic "action" {
    for_each = var.AKSAlertNodeDiskPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#####################################
#### Average persistent volume % ####
#####################################

resource "azurerm_monitor_metric_alert" "alert_aks-pv-percentage" {
  count               = var.AKSAlertPVPercentageCreated == false ? 0 : 1
  name                = "AKS_PV_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Persistent Volume Percentage"
  severity            = var.AKSAlertPVPercentageSeverity
  enabled             = var.AKSAlertPVPercentageEnabled
  frequency           = var.AKSAlertPVPercentageFrequency
  window_size         = coalesce(var.AKSAlertPVPercentageWindow, var.AKSAlertPVPercentageFrequency)
  auto_mitigate       = var.AKSAlertPVPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/persistentvolumes"
    metric_name      = "pvUsageExceededPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertPVPercentageThreshold

    dimension {
      name     = "podName"
      operator = "Include"
      values   = var.AKSAlertPVPercentagePods
    }
  }
    
  dynamic "action" {
    for_each = var.AKSAlertPVPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

####################################
#### Restarting container count ####
####################################

resource "azurerm_monitor_metric_alert" "alert_aks-restarting-container-count" {
  count               = var.AKSAlertRestartingContainerCountCreated == false ? 0 : 1
  name                = "AKS_Restarting_Container_Count"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Restarting Container Count"
  severity            = var.AKSAlertRestartingContainerCountSeverity
  enabled             = var.AKSAlertRestartingContainerCountEnabled
  frequency           = var.AKSAlertRestartingContainerCountFrequency
  window_size         = coalesce(var.AKSAlertRestartingContainerCountWindow, var.AKSAlertRestartingContainerCountFrequency)
  auto_mitigate       = var.AKSAlertRestartingContainerCountAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "restartingContainerCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertRestartingContainerCountThreshold

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AKSAlertRestartingContainerCountThreshold
    }

    dimension {
      name     = "controllerName"
      operator = "Include"
      values   = ["*"]
    }
  }
    
  dynamic "action" {
    for_each = var.AKSAlertRestartingContainerCountActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##########################
#### Failed pod count ####
##########################

resource "azurerm_monitor_metric_alert" "alert_aks-pods-in-failed-state" {
  count               = var.AKSAlertPodsInFailedStateCreated == false ? 0 : 1
  name                = "AKS_Pods_In_Failed_State"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Pods In Failed State"
  severity            = var.AKSAlertPodsInFailedStateSeverity
  enabled             = var.AKSAlertPodsInFailedStateEnabled
  frequency           = var.AKSAlertPodsInFailedStateFrequency
  window_size         = coalesce(var.AKSAlertPodsInFailedStateWindow, var.AKSAlertPodsInFailedStateFrequency)
  auto_mitigate       = var.AKSAlertPodsInFailedStateAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "podCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertPodsInFailedStateThreshold

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AKSAlertPodsInFailedStateNameSpaces
    }

    dimension {
      name     = "controllerName"
      operator = "Include"
      values   = ["*"]
    }

    dimension {
      name     = "phase"
      operator = "Include"
      values   = ["Failed", "Unknown"]
    }
  }

  dynamic "action" {
    for_each = var.AKSAlertPodsInFailedStateActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

########################
#### Node not ready ####
########################

resource "azurerm_monitor_metric_alert" "alert_aks-node-not-ready" {
  count               = var.AKSAlertNodeNotReadyCreated == false ? 0 : 1
  name                = "AKS_Node_Not_Ready"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node Not Ready"
  severity            = var.AKSAlertNodeNotReadySeverity
  enabled             = var.AKSAlertNodeNotReadyEnabled
  frequency           = var.AKSAlertNodeNotReadyFrequency
  window_size         = coalesce(var.AKSAlertNodeNotReadyWindow, var.AKSAlertNodeNotReadyFrequency)
  auto_mitigate       = var.AKSAlertNodeNotReadyAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "nodesCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertNodeNotReadyThreshold

    dimension {
      name     = "status"
      operator = "Include"
      values   = ["NotReady"]
    }
  }

  dynamic "action" {
    for_each = var.AKSAlertNodeNotReadyActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

###############################
#### OOM killed containers ####
###############################

resource "azurerm_monitor_metric_alert" "alert_aks-oom-killed-containers" {
  count               = var.AKSAlertOOMKilledContainersCreated == false ? 0 : 1
  name                = "AKS_OOM_Killed_Containers"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} OOM Killed Containers"
  severity            = var.AKSAlertOOMKilledContainersSeverity
  enabled             = var.AKSAlertOOMKilledContainersEnabled
  frequency           = var.AKSAlertOOMKilledContainersFrequency
  window_size         = coalesce(var.AKSAlertOOMKilledContainersWindow, var.AKSAlertOOMKilledContainersFrequency)
  auto_mitigate       = var.AKSAlertOOMKilledContainersAutoResolve
 
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "oomKilledContainerCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertOOMKilledContainersThreshold

    dimension {     
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AKSAlertOOMKilledContainersNameSpaces
    }

    dimension {
        name     = "controllerName"
        operator = "Include"
        values   = ["*"]
    }
  }

  dynamic "action" {
    for_each = var.AKSAlertOOMKilledContainersActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

######################
#### Pods ready % ####
######################

resource "azurerm_monitor_metric_alert" "alert_aks-pods-ready-percentage" {
  count               = var.AKSAlertPodsReadyPercentageCreated == false ? 0 : 1
  name                = "AKS_Container_CPU_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Container CPU Percentage"
  severity            = var.AKSAlertPodsReadyPercentageSeverity
  enabled             = var.AKSAlertPodsReadyPercentageEnabled
  frequency           = var.AKSAlertPodsReadyPercentageFrequency
  window_size         = coalesce(var.AKSAlertPodsReadyPercentageWindow, var.AKSAlertPodsReadyPercentageFrequency)
  auto_mitigate       = var.AKSAlertPodsReadyPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "PodReadyPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertPodsReadyPercentageThreshold

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AKSAlertPodsReadyPercentageNameSpaces
    }

    dimension {
        name     = "controllerName"
        operator = "Include"
        values   = ["*"]
    }
  }

  dynamic "action" {
    for_each = var.AKSAlertPodsReadyPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##########################
#### Stale jobs count ####
##########################

resource "azurerm_monitor_metric_alert" "alert_aks-stale-jobs-count" {
  count               = var.AKSAlertPodsInFailedStateCreated == false ? 0 : 1
  name                = "AKS_Stale_Jobs_Count"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Stale Jobs Count"
  severity            = var.AKSAlertPodsInFailedStateSeverity
  enabled             = var.AKSAlertPodsInFailedStateEnabled
  frequency           = var.AKSAlertPodsInFailedStateFrequency
  window_size         = coalesce(var.AKSAlertPodsInFailedStateWindow, var.AKSAlertPodsInFailedStateFrequency)
  auto_mitigate       = var.AKSAlertPodsInFailedStateAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "completedJobsCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AKSAlertPodsInFailedStateThreshold

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AKSAlertPodsInFailedStateNameSpaces
    }

    dimension {
      name     = "controllerName"
      operator = "Include"
      values   = ["*"]
    }    
  }

  dynamic "action" {
    for_each = var.AKSAlertPodsInFailedStateActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}