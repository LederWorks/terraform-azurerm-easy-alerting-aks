#### AKS Alerts ####

### Average container cpu %
resource "azurerm_monitor_metric_alert" "alert_aks-container-cpu-percentage" {
  count               = var.AlertContainerCPUPercentageCreated == false ? 0 : 1
  name                = "AKS_Container_CPU_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Container CPU Percentage"
  severity            = var.AlertContainerCPUPercentageSeverity
  enabled             = var.AlertContainerCPUPercentageEnabled
  frequency           = var.AlertContainerCPUPercentageFrequency
  window_size         = coalesce(var.AlertContainerCPUPercentageWindow, var.AlertContainerCPUPercentageFrequency)
  auto_mitigate       = var.AlertContainerCPUPercentageAutoResolve
  
  criteria {
    metric_namespace = "Insights.Container/containers"
    metric_name      = "cpuExceededPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.AlertContainerCPUPercentageThreshold

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = var.AlertContainerCPUPercentageNameSpaces
    }

    dimension {
        name     = "controllerName"
        operator = "Include"
        values   = ["*"]
    }
  }

  dynamic "action" {
    for_each = var.AlertContainerCPUPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}
/* 
### Average container working set memory %
resource "azurerm_monitor_metric_alert" "AKS_ContainerWorkingSetMemoryPercentage" {
  for_each              = var.cluster
  name                = "AKS_ContainerWorkingSetMemoryPercentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Container Memory Percentage"
  
  criteria {
    metric_namespace = "Insights.Container/containers"
    metric_name      = "memoryWorkingSetExceededPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 0

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = each.value.k8s_namespace
    }

     dimension {
      name     = "controllerName"
      operator = "Include"
      values   = ["*"]
    }

  }
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}



### Average node cpu %
resource "azurerm_monitor_metric_alert" "alert_aks-node_cpu_percentage" {
  for_each              = var.cluster
  name                = "AKS_Node_CPU_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node CPU Percentage"
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "cpuUsagePercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80

    dimension {
      name     = "host"
      operator = "Include"
      values   = ["*"]
    }
    
  }
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}


### Average node working set memory %
resource "azurerm_monitor_metric_alert" "alert_aks-node-workingset-memory-percentage" {
  for_each              = var.cluster
  name                = "AKS_NodeWorkingSetMemoryPercentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node Memory Percentage"
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "memoryWorkingSetPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 0

    dimension {
      name     = "host"
      operator = "Include"
      values   = ["*"]
    }
    
  }
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}

### Average disk sage %
resource "azurerm_monitor_metric_alert" "alert_aks-node-disk-usage-percentage" {
  for_each              = var.cluster
  name                = "AKS_NodeDiskUsagePercentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node Disk Percentage"
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "DiskUsedPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80

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
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}

### Average persistent volume usage %
resource "azurerm_monitor_metric_alert" "AKS_PV_Usage_Percentage" {
  for_each              = var.cluster
  name                = "AKS_PV_Usage_Percentage"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Persistent Volume Percentage"
  
  criteria {
    metric_namespace = "Insights.Container/persistentvolumes"
    metric_name      = "pvUsageExceededPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80

    dimension {
      name     = "podName"
      operator = "Include"
      values   = ["*"]
    }
    
  }
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}

### Restarting container count
resource "azurerm_monitor_metric_alert" "AKS_Restarting_Container_Count" {
  for_each              = var.cluster
  name                = "AKS_Restarting_Container_Count"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Restarting Container Count"
  
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "restartingContainerCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 0

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = each.value.k8s_namespace
    }

    dimension {
      name     = "controllerName"
      operator = "Include"
      values   = ["*"]
    }
    
  }
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}

### Failed pod count
resource "azurerm_monitor_metric_alert" "AKS_Pods_In_Failed_State" {
  for_each              = var.cluster
  name                = "AKS_Pods_In_Failed_State"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Pods In Failed State"
  severity            = 1
  
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "podCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 0

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = each.value.k8s_namespace
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
  action {
    action_group_id = azurerm_monitor_action_group.pagerduty-ci-aks-agrp.id
  }
}



### Node not ready status
resource "azurerm_monitor_metric_alert" "AKS_Node_Not_Ready" {
  for_each              = var.cluster
  name                = "AKS_Node_Not_Ready"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Node Not Ready"
  
  criteria {
    metric_namespace = "Insights.Container/nodes"
    metric_name      = "nodesCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 0

    dimension {
      name     = "status"
      operator = "Include"
      values   = ["NotReady"]
    }
  }
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}



### OOM killed containers
resource "azurerm_monitor_metric_alert" "AKS_OOM_Killed_Containers" {
for_each              = var.cluster
  name                = "AKS_OOM_Killed_Containers"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} OOM Killed Containers"

 
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "oomKilledContainerCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 0

    dimension {
      
      name     = "kubernetes namespace"
      operator = "Include"
      values   = each.value.k8s_namespace
    }

    dimension {
        
        name     = "controllerName"
        operator = "Include"
        values   = ["*"]

    }

  }

  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
}

### Pods ready %




### Completed job count
resource "azurerm_monitor_metric_alert" "AKS_Stale_Jobs_Count" {
  for_each              = var.cluster
  name                = "AKS_Stale_Jobs_Count"
  resource_group_name = var.AKSResourceGroupObject.name
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.AKSResourceGroupObject.name}/providers/Microsoft.ContainerService/managedClusters/${var.AKSClusterName}"]
  description         = "${var.AKSClusterName} Stale Jobs Count"
  
  criteria {
    metric_namespace = "Insights.Container/pods"
    metric_name      = "completedJobsCount"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 0

    dimension {
      name     = "kubernetes namespace"
      operator = "Include"
      values   = each.value.k8s_namespace 
    }

    dimension {
      name     = "controllerName"
      operator = "Include"
      values   = ["*"]
    }
    
  }
  action {
    action_group_id = azurerm_monitor_action_group.msteam-email-agrp.id
  }
} */