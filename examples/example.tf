module easy-alerting-aks {
    source  = "LederWorks/easy-alerting-aks/azurerm"
    version = "x.x.x"

    #SubscriptionID
    SubscriptionID                                  = data.azurerm_client_config.current.subscription_id

    #Tags
    Tags                                            = local.tags

    #AKS Alerts

    AKSResourceGroupObject                          = local.aks-rg
    AKSClusterName                                  = local.aks-name

    AKSAlertContainerCPUPercentageCreated           = true
    AKSAlertContainerCPUPercentageSeverity          = 2
    AKSAlertContainerCPUPercentageActionGroupIDs    = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertContainerMemoryPercentageCreated        = true
    AKSAlertContainerMemoryPercentageActionGroupIDs = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertNodeCPUPercentageCreated                = true
    AKSAlertNodeCPUPercentageActionGroupIDs         = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertNodeMemoryPercentageCreated             = true
    AKSAlertNodeMemoryPercentageActionGroupIDs      = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertNodeDiskPercentageCreated               = true
    AKSAlertNodeDiskPercentageActionGroupIDs        = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertPVPercentageCreated                     = true
    AKSAlertPVPercentageActionGroupIDs              = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertRestartingContainerCountCreated         = true
    AKSAlertRestartingContainerCountActionGroupIDs  = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertPodsInFailedStateCreated                = true
    AKSAlertPodsInFailedStateActionGroupIDs         = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertNodeNotReadyCreated                     = true
    AKSAlertNodeNotReadyActionGroupIDs              = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertOOMKilledContainersCreated              = true
    AKSAlertOOMKilledContainersActionGroupIDs       = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertPodsReadyPercentageCreated              = true
    AKSAlertPodsReadyPercentageActionGroupIDs       = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]

    AKSAlertStaleJobsCountCreated                   = true
    AKSAlertStaleJobsCountActionGroupIDs            = [azurerm_monitor_action_group.aks_actiongroup_mail.id, azurerm_monitor_action_group.aks_actiongroup_webhook.id]   
}