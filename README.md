# terraform-azurerm-easy-alerting
LederWorks Azure Easy Alerting Terraform Module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_metric_alert.alert_aks-container-cpu-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-container-memory-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-node-cpu-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-node-disk-usage-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-node-memory-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-node-not-ready](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-oom-killed-containers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-pods-in-failed-state](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-pods-ready-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-pv-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-restarting-container-count](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |
| [azurerm_monitor_metric_alert.alert_aks-stale-jobs-count](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AKSAlertContainerCPUPercentageActionGroupIDs"></a> [AKSAlertContainerCPUPercentageActionGroupIDs](#input\_AKSAlertContainerCPUPercentageActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertContainerCPUPercentageAutoResolve"></a> [AKSAlertContainerCPUPercentageAutoResolve](#input\_AKSAlertContainerCPUPercentageAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertContainerCPUPercentageCreated"></a> [AKSAlertContainerCPUPercentageCreated](#input\_AKSAlertContainerCPUPercentageCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertContainerCPUPercentageEnabled"></a> [AKSAlertContainerCPUPercentageEnabled](#input\_AKSAlertContainerCPUPercentageEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertContainerCPUPercentageFrequency"></a> [AKSAlertContainerCPUPercentageFrequency](#input\_AKSAlertContainerCPUPercentageFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertContainerCPUPercentageNameSpaces"></a> [AKSAlertContainerCPUPercentageNameSpaces](#input\_AKSAlertContainerCPUPercentageNameSpaces) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertContainerCPUPercentageSeverity"></a> [AKSAlertContainerCPUPercentageSeverity](#input\_AKSAlertContainerCPUPercentageSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertContainerCPUPercentageThreshold"></a> [AKSAlertContainerCPUPercentageThreshold](#input\_AKSAlertContainerCPUPercentageThreshold) | n/a | `number` | `95` | no |
| <a name="input_AKSAlertContainerCPUPercentageWindow"></a> [AKSAlertContainerCPUPercentageWindow](#input\_AKSAlertContainerCPUPercentageWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertContainerMemoryPercentageActionGroupIDs"></a> [AKSAlertContainerMemoryPercentageActionGroupIDs](#input\_AKSAlertContainerMemoryPercentageActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertContainerMemoryPercentageAutoResolve"></a> [AKSAlertContainerMemoryPercentageAutoResolve](#input\_AKSAlertContainerMemoryPercentageAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertContainerMemoryPercentageCreated"></a> [AKSAlertContainerMemoryPercentageCreated](#input\_AKSAlertContainerMemoryPercentageCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertContainerMemoryPercentageEnabled"></a> [AKSAlertContainerMemoryPercentageEnabled](#input\_AKSAlertContainerMemoryPercentageEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertContainerMemoryPercentageFrequency"></a> [AKSAlertContainerMemoryPercentageFrequency](#input\_AKSAlertContainerMemoryPercentageFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertContainerMemoryPercentageNameSpaces"></a> [AKSAlertContainerMemoryPercentageNameSpaces](#input\_AKSAlertContainerMemoryPercentageNameSpaces) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertContainerMemoryPercentageSeverity"></a> [AKSAlertContainerMemoryPercentageSeverity](#input\_AKSAlertContainerMemoryPercentageSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertContainerMemoryPercentageThreshold"></a> [AKSAlertContainerMemoryPercentageThreshold](#input\_AKSAlertContainerMemoryPercentageThreshold) | n/a | `number` | `95` | no |
| <a name="input_AKSAlertContainerMemoryPercentageWindow"></a> [AKSAlertContainerMemoryPercentageWindow](#input\_AKSAlertContainerMemoryPercentageWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertNodeCPUPercentageActionGroupIDs"></a> [AKSAlertNodeCPUPercentageActionGroupIDs](#input\_AKSAlertNodeCPUPercentageActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertNodeCPUPercentageAutoResolve"></a> [AKSAlertNodeCPUPercentageAutoResolve](#input\_AKSAlertNodeCPUPercentageAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeCPUPercentageCreated"></a> [AKSAlertNodeCPUPercentageCreated](#input\_AKSAlertNodeCPUPercentageCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertNodeCPUPercentageEnabled"></a> [AKSAlertNodeCPUPercentageEnabled](#input\_AKSAlertNodeCPUPercentageEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeCPUPercentageFrequency"></a> [AKSAlertNodeCPUPercentageFrequency](#input\_AKSAlertNodeCPUPercentageFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertNodeCPUPercentageSeverity"></a> [AKSAlertNodeCPUPercentageSeverity](#input\_AKSAlertNodeCPUPercentageSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertNodeCPUPercentageThreshold"></a> [AKSAlertNodeCPUPercentageThreshold](#input\_AKSAlertNodeCPUPercentageThreshold) | n/a | `number` | `80` | no |
| <a name="input_AKSAlertNodeCPUPercentageWindow"></a> [AKSAlertNodeCPUPercentageWindow](#input\_AKSAlertNodeCPUPercentageWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertNodeDiskPercentageActionGroupIDs"></a> [AKSAlertNodeDiskPercentageActionGroupIDs](#input\_AKSAlertNodeDiskPercentageActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertNodeDiskPercentageAutoResolve"></a> [AKSAlertNodeDiskPercentageAutoResolve](#input\_AKSAlertNodeDiskPercentageAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeDiskPercentageCreated"></a> [AKSAlertNodeDiskPercentageCreated](#input\_AKSAlertNodeDiskPercentageCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertNodeDiskPercentageEnabled"></a> [AKSAlertNodeDiskPercentageEnabled](#input\_AKSAlertNodeDiskPercentageEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeDiskPercentageFrequency"></a> [AKSAlertNodeDiskPercentageFrequency](#input\_AKSAlertNodeDiskPercentageFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertNodeDiskPercentageSeverity"></a> [AKSAlertNodeDiskPercentageSeverity](#input\_AKSAlertNodeDiskPercentageSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertNodeDiskPercentageThreshold"></a> [AKSAlertNodeDiskPercentageThreshold](#input\_AKSAlertNodeDiskPercentageThreshold) | n/a | `number` | `80` | no |
| <a name="input_AKSAlertNodeDiskPercentageWindow"></a> [AKSAlertNodeDiskPercentageWindow](#input\_AKSAlertNodeDiskPercentageWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertNodeMemoryPercentageActionGroupIDs"></a> [AKSAlertNodeMemoryPercentageActionGroupIDs](#input\_AKSAlertNodeMemoryPercentageActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertNodeMemoryPercentageAutoResolve"></a> [AKSAlertNodeMemoryPercentageAutoResolve](#input\_AKSAlertNodeMemoryPercentageAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeMemoryPercentageCreated"></a> [AKSAlertNodeMemoryPercentageCreated](#input\_AKSAlertNodeMemoryPercentageCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertNodeMemoryPercentageEnabled"></a> [AKSAlertNodeMemoryPercentageEnabled](#input\_AKSAlertNodeMemoryPercentageEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeMemoryPercentageFrequency"></a> [AKSAlertNodeMemoryPercentageFrequency](#input\_AKSAlertNodeMemoryPercentageFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertNodeMemoryPercentageSeverity"></a> [AKSAlertNodeMemoryPercentageSeverity](#input\_AKSAlertNodeMemoryPercentageSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertNodeMemoryPercentageThreshold"></a> [AKSAlertNodeMemoryPercentageThreshold](#input\_AKSAlertNodeMemoryPercentageThreshold) | n/a | `number` | `80` | no |
| <a name="input_AKSAlertNodeMemoryPercentageWindow"></a> [AKSAlertNodeMemoryPercentageWindow](#input\_AKSAlertNodeMemoryPercentageWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertNodeNotReadyActionGroupIDs"></a> [AKSAlertNodeNotReadyActionGroupIDs](#input\_AKSAlertNodeNotReadyActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertNodeNotReadyAutoResolve"></a> [AKSAlertNodeNotReadyAutoResolve](#input\_AKSAlertNodeNotReadyAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeNotReadyCreated"></a> [AKSAlertNodeNotReadyCreated](#input\_AKSAlertNodeNotReadyCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertNodeNotReadyEnabled"></a> [AKSAlertNodeNotReadyEnabled](#input\_AKSAlertNodeNotReadyEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertNodeNotReadyFrequency"></a> [AKSAlertNodeNotReadyFrequency](#input\_AKSAlertNodeNotReadyFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertNodeNotReadySeverity"></a> [AKSAlertNodeNotReadySeverity](#input\_AKSAlertNodeNotReadySeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertNodeNotReadyThreshold"></a> [AKSAlertNodeNotReadyThreshold](#input\_AKSAlertNodeNotReadyThreshold) | n/a | `number` | `0` | no |
| <a name="input_AKSAlertNodeNotReadyWindow"></a> [AKSAlertNodeNotReadyWindow](#input\_AKSAlertNodeNotReadyWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertOOMKilledContainersActionGroupIDs"></a> [AKSAlertOOMKilledContainersActionGroupIDs](#input\_AKSAlertOOMKilledContainersActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertOOMKilledContainersAutoResolve"></a> [AKSAlertOOMKilledContainersAutoResolve](#input\_AKSAlertOOMKilledContainersAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertOOMKilledContainersCreated"></a> [AKSAlertOOMKilledContainersCreated](#input\_AKSAlertOOMKilledContainersCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertOOMKilledContainersEnabled"></a> [AKSAlertOOMKilledContainersEnabled](#input\_AKSAlertOOMKilledContainersEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertOOMKilledContainersFrequency"></a> [AKSAlertOOMKilledContainersFrequency](#input\_AKSAlertOOMKilledContainersFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertOOMKilledContainersNameSpaces"></a> [AKSAlertOOMKilledContainersNameSpaces](#input\_AKSAlertOOMKilledContainersNameSpaces) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertOOMKilledContainersSeverity"></a> [AKSAlertOOMKilledContainersSeverity](#input\_AKSAlertOOMKilledContainersSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertOOMKilledContainersThreshold"></a> [AKSAlertOOMKilledContainersThreshold](#input\_AKSAlertOOMKilledContainersThreshold) | n/a | `number` | `0` | no |
| <a name="input_AKSAlertOOMKilledContainersWindow"></a> [AKSAlertOOMKilledContainersWindow](#input\_AKSAlertOOMKilledContainersWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertPVPercentageActionGroupIDs"></a> [AKSAlertPVPercentageActionGroupIDs](#input\_AKSAlertPVPercentageActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertPVPercentageAutoResolve"></a> [AKSAlertPVPercentageAutoResolve](#input\_AKSAlertPVPercentageAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertPVPercentageCreated"></a> [AKSAlertPVPercentageCreated](#input\_AKSAlertPVPercentageCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertPVPercentageEnabled"></a> [AKSAlertPVPercentageEnabled](#input\_AKSAlertPVPercentageEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertPVPercentageFrequency"></a> [AKSAlertPVPercentageFrequency](#input\_AKSAlertPVPercentageFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertPVPercentagePods"></a> [AKSAlertPVPercentagePods](#input\_AKSAlertPVPercentagePods) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertPVPercentageSeverity"></a> [AKSAlertPVPercentageSeverity](#input\_AKSAlertPVPercentageSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertPVPercentageThreshold"></a> [AKSAlertPVPercentageThreshold](#input\_AKSAlertPVPercentageThreshold) | n/a | `number` | `95` | no |
| <a name="input_AKSAlertPVPercentageWindow"></a> [AKSAlertPVPercentageWindow](#input\_AKSAlertPVPercentageWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertPodsInFailedStateActionGroupIDs"></a> [AKSAlertPodsInFailedStateActionGroupIDs](#input\_AKSAlertPodsInFailedStateActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertPodsInFailedStateAutoResolve"></a> [AKSAlertPodsInFailedStateAutoResolve](#input\_AKSAlertPodsInFailedStateAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertPodsInFailedStateCreated"></a> [AKSAlertPodsInFailedStateCreated](#input\_AKSAlertPodsInFailedStateCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertPodsInFailedStateEnabled"></a> [AKSAlertPodsInFailedStateEnabled](#input\_AKSAlertPodsInFailedStateEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertPodsInFailedStateFrequency"></a> [AKSAlertPodsInFailedStateFrequency](#input\_AKSAlertPodsInFailedStateFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertPodsInFailedStateNameSpaces"></a> [AKSAlertPodsInFailedStateNameSpaces](#input\_AKSAlertPodsInFailedStateNameSpaces) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertPodsInFailedStateSeverity"></a> [AKSAlertPodsInFailedStateSeverity](#input\_AKSAlertPodsInFailedStateSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertPodsInFailedStateThreshold"></a> [AKSAlertPodsInFailedStateThreshold](#input\_AKSAlertPodsInFailedStateThreshold) | n/a | `number` | `0` | no |
| <a name="input_AKSAlertPodsInFailedStateWindow"></a> [AKSAlertPodsInFailedStateWindow](#input\_AKSAlertPodsInFailedStateWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertPodsReadyPercentageActionGroupIDs"></a> [AKSAlertPodsReadyPercentageActionGroupIDs](#input\_AKSAlertPodsReadyPercentageActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertPodsReadyPercentageAutoResolve"></a> [AKSAlertPodsReadyPercentageAutoResolve](#input\_AKSAlertPodsReadyPercentageAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertPodsReadyPercentageCreated"></a> [AKSAlertPodsReadyPercentageCreated](#input\_AKSAlertPodsReadyPercentageCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertPodsReadyPercentageEnabled"></a> [AKSAlertPodsReadyPercentageEnabled](#input\_AKSAlertPodsReadyPercentageEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertPodsReadyPercentageFrequency"></a> [AKSAlertPodsReadyPercentageFrequency](#input\_AKSAlertPodsReadyPercentageFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertPodsReadyPercentageNameSpaces"></a> [AKSAlertPodsReadyPercentageNameSpaces](#input\_AKSAlertPodsReadyPercentageNameSpaces) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertPodsReadyPercentageSeverity"></a> [AKSAlertPodsReadyPercentageSeverity](#input\_AKSAlertPodsReadyPercentageSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertPodsReadyPercentageThreshold"></a> [AKSAlertPodsReadyPercentageThreshold](#input\_AKSAlertPodsReadyPercentageThreshold) | n/a | `number` | `95` | no |
| <a name="input_AKSAlertPodsReadyPercentageWindow"></a> [AKSAlertPodsReadyPercentageWindow](#input\_AKSAlertPodsReadyPercentageWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertRestartingContainerCountActionGroupIDs"></a> [AKSAlertRestartingContainerCountActionGroupIDs](#input\_AKSAlertRestartingContainerCountActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertRestartingContainerCountAutoResolve"></a> [AKSAlertRestartingContainerCountAutoResolve](#input\_AKSAlertRestartingContainerCountAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertRestartingContainerCountCreated"></a> [AKSAlertRestartingContainerCountCreated](#input\_AKSAlertRestartingContainerCountCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertRestartingContainerCountEnabled"></a> [AKSAlertRestartingContainerCountEnabled](#input\_AKSAlertRestartingContainerCountEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertRestartingContainerCountFrequency"></a> [AKSAlertRestartingContainerCountFrequency](#input\_AKSAlertRestartingContainerCountFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertRestartingContainerCountNameSpaces"></a> [AKSAlertRestartingContainerCountNameSpaces](#input\_AKSAlertRestartingContainerCountNameSpaces) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertRestartingContainerCountSeverity"></a> [AKSAlertRestartingContainerCountSeverity](#input\_AKSAlertRestartingContainerCountSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertRestartingContainerCountThreshold"></a> [AKSAlertRestartingContainerCountThreshold](#input\_AKSAlertRestartingContainerCountThreshold) | n/a | `number` | `0` | no |
| <a name="input_AKSAlertRestartingContainerCountWindow"></a> [AKSAlertRestartingContainerCountWindow](#input\_AKSAlertRestartingContainerCountWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSAlertStaleJobsCountActionGroupIDs"></a> [AKSAlertStaleJobsCountActionGroupIDs](#input\_AKSAlertStaleJobsCountActionGroupIDs) | n/a | `set(string)` | `[]` | no |
| <a name="input_AKSAlertStaleJobsCountAutoResolve"></a> [AKSAlertStaleJobsCountAutoResolve](#input\_AKSAlertStaleJobsCountAutoResolve) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertStaleJobsCountCreated"></a> [AKSAlertStaleJobsCountCreated](#input\_AKSAlertStaleJobsCountCreated) | n/a | `bool` | `false` | no |
| <a name="input_AKSAlertStaleJobsCountEnabled"></a> [AKSAlertStaleJobsCountEnabled](#input\_AKSAlertStaleJobsCountEnabled) | n/a | `bool` | `true` | no |
| <a name="input_AKSAlertStaleJobsCountFrequency"></a> [AKSAlertStaleJobsCountFrequency](#input\_AKSAlertStaleJobsCountFrequency) | The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M. | `string` | `"PT1M"` | no |
| <a name="input_AKSAlertStaleJobsCountNameSpaces"></a> [AKSAlertStaleJobsCountNameSpaces](#input\_AKSAlertStaleJobsCountNameSpaces) | n/a | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_AKSAlertStaleJobsCountSeverity"></a> [AKSAlertStaleJobsCountSeverity](#input\_AKSAlertStaleJobsCountSeverity) | The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3. | `number` | `3` | no |
| <a name="input_AKSAlertStaleJobsCountThreshold"></a> [AKSAlertStaleJobsCountThreshold](#input\_AKSAlertStaleJobsCountThreshold) | n/a | `number` | `0` | no |
| <a name="input_AKSAlertStaleJobsCountWindow"></a> [AKSAlertStaleJobsCountWindow](#input\_AKSAlertStaleJobsCountWindow) | The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency. | `string` | `null` | no |
| <a name="input_AKSClusterName"></a> [AKSClusterName](#input\_AKSClusterName) | AKS cluster name | `any` | `null` | no |
| <a name="input_AKSResourceGroupObject"></a> [AKSResourceGroupObject](#input\_AKSResourceGroupObject) | AKS cluster resource group | `any` | `null` | no |
| <a name="input_SubscriptionID"></a> [SubscriptionID](#input\_SubscriptionID) | ID of the Subscription | `any` | n/a | yes |
| <a name="input_Tags"></a> [Tags](#input\_Tags) | BYO Tags, preferrable from a local on your side :D | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->