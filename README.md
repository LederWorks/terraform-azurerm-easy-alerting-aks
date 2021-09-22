LederWorks Azure Easy Alerting Terraform Module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_monitor_metric_alert.alert_aks-container-cpu-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-container-memory-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-node-cpu-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-node-disk-usage-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-node-memory-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-node-not-ready](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-oom-killed-containers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-pods-in-failed-state](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-pods-ready-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-pv-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-restarting-container-count](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_aks-stale-jobs-count](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_SubscriptionID"></a> [SubscriptionID](#input\_SubscriptionID)

Description: ID of the Subscription

Type: `any`

### <a name="input_Tags"></a> [Tags](#input\_Tags)

Description: BYO Tags, preferrable from a local on your side :D

Type: `map(string)`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_AKSAlertContainerCPUPercentageActionGroupIDs"></a> [AKSAlertContainerCPUPercentageActionGroupIDs](#input\_AKSAlertContainerCPUPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertContainerCPUPercentageAutoResolve"></a> [AKSAlertContainerCPUPercentageAutoResolve](#input\_AKSAlertContainerCPUPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertContainerCPUPercentageCreated"></a> [AKSAlertContainerCPUPercentageCreated](#input\_AKSAlertContainerCPUPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertContainerCPUPercentageEnabled"></a> [AKSAlertContainerCPUPercentageEnabled](#input\_AKSAlertContainerCPUPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertContainerCPUPercentageFrequency"></a> [AKSAlertContainerCPUPercentageFrequency](#input\_AKSAlertContainerCPUPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertContainerCPUPercentageNameSpaces"></a> [AKSAlertContainerCPUPercentageNameSpaces](#input\_AKSAlertContainerCPUPercentageNameSpaces)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertContainerCPUPercentageSeverity"></a> [AKSAlertContainerCPUPercentageSeverity](#input\_AKSAlertContainerCPUPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertContainerCPUPercentageThreshold"></a> [AKSAlertContainerCPUPercentageThreshold](#input\_AKSAlertContainerCPUPercentageThreshold)

Description: n/a

Type: `number`

Default: `95`

### <a name="input_AKSAlertContainerCPUPercentageWindow"></a> [AKSAlertContainerCPUPercentageWindow](#input\_AKSAlertContainerCPUPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertContainerMemoryPercentageActionGroupIDs"></a> [AKSAlertContainerMemoryPercentageActionGroupIDs](#input\_AKSAlertContainerMemoryPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertContainerMemoryPercentageAutoResolve"></a> [AKSAlertContainerMemoryPercentageAutoResolve](#input\_AKSAlertContainerMemoryPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertContainerMemoryPercentageCreated"></a> [AKSAlertContainerMemoryPercentageCreated](#input\_AKSAlertContainerMemoryPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertContainerMemoryPercentageEnabled"></a> [AKSAlertContainerMemoryPercentageEnabled](#input\_AKSAlertContainerMemoryPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertContainerMemoryPercentageFrequency"></a> [AKSAlertContainerMemoryPercentageFrequency](#input\_AKSAlertContainerMemoryPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertContainerMemoryPercentageNameSpaces"></a> [AKSAlertContainerMemoryPercentageNameSpaces](#input\_AKSAlertContainerMemoryPercentageNameSpaces)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertContainerMemoryPercentageSeverity"></a> [AKSAlertContainerMemoryPercentageSeverity](#input\_AKSAlertContainerMemoryPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertContainerMemoryPercentageThreshold"></a> [AKSAlertContainerMemoryPercentageThreshold](#input\_AKSAlertContainerMemoryPercentageThreshold)

Description: n/a

Type: `number`

Default: `95`

### <a name="input_AKSAlertContainerMemoryPercentageWindow"></a> [AKSAlertContainerMemoryPercentageWindow](#input\_AKSAlertContainerMemoryPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertNodeCPUPercentageActionGroupIDs"></a> [AKSAlertNodeCPUPercentageActionGroupIDs](#input\_AKSAlertNodeCPUPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertNodeCPUPercentageAutoResolve"></a> [AKSAlertNodeCPUPercentageAutoResolve](#input\_AKSAlertNodeCPUPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeCPUPercentageCreated"></a> [AKSAlertNodeCPUPercentageCreated](#input\_AKSAlertNodeCPUPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertNodeCPUPercentageEnabled"></a> [AKSAlertNodeCPUPercentageEnabled](#input\_AKSAlertNodeCPUPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeCPUPercentageFrequency"></a> [AKSAlertNodeCPUPercentageFrequency](#input\_AKSAlertNodeCPUPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertNodeCPUPercentageSeverity"></a> [AKSAlertNodeCPUPercentageSeverity](#input\_AKSAlertNodeCPUPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertNodeCPUPercentageThreshold"></a> [AKSAlertNodeCPUPercentageThreshold](#input\_AKSAlertNodeCPUPercentageThreshold)

Description: n/a

Type: `number`

Default: `80`

### <a name="input_AKSAlertNodeCPUPercentageWindow"></a> [AKSAlertNodeCPUPercentageWindow](#input\_AKSAlertNodeCPUPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertNodeDiskPercentageActionGroupIDs"></a> [AKSAlertNodeDiskPercentageActionGroupIDs](#input\_AKSAlertNodeDiskPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertNodeDiskPercentageAutoResolve"></a> [AKSAlertNodeDiskPercentageAutoResolve](#input\_AKSAlertNodeDiskPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeDiskPercentageCreated"></a> [AKSAlertNodeDiskPercentageCreated](#input\_AKSAlertNodeDiskPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertNodeDiskPercentageEnabled"></a> [AKSAlertNodeDiskPercentageEnabled](#input\_AKSAlertNodeDiskPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeDiskPercentageFrequency"></a> [AKSAlertNodeDiskPercentageFrequency](#input\_AKSAlertNodeDiskPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertNodeDiskPercentageSeverity"></a> [AKSAlertNodeDiskPercentageSeverity](#input\_AKSAlertNodeDiskPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertNodeDiskPercentageThreshold"></a> [AKSAlertNodeDiskPercentageThreshold](#input\_AKSAlertNodeDiskPercentageThreshold)

Description: n/a

Type: `number`

Default: `80`

### <a name="input_AKSAlertNodeDiskPercentageWindow"></a> [AKSAlertNodeDiskPercentageWindow](#input\_AKSAlertNodeDiskPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertNodeMemoryPercentageActionGroupIDs"></a> [AKSAlertNodeMemoryPercentageActionGroupIDs](#input\_AKSAlertNodeMemoryPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertNodeMemoryPercentageAutoResolve"></a> [AKSAlertNodeMemoryPercentageAutoResolve](#input\_AKSAlertNodeMemoryPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeMemoryPercentageCreated"></a> [AKSAlertNodeMemoryPercentageCreated](#input\_AKSAlertNodeMemoryPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertNodeMemoryPercentageEnabled"></a> [AKSAlertNodeMemoryPercentageEnabled](#input\_AKSAlertNodeMemoryPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeMemoryPercentageFrequency"></a> [AKSAlertNodeMemoryPercentageFrequency](#input\_AKSAlertNodeMemoryPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertNodeMemoryPercentageSeverity"></a> [AKSAlertNodeMemoryPercentageSeverity](#input\_AKSAlertNodeMemoryPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertNodeMemoryPercentageThreshold"></a> [AKSAlertNodeMemoryPercentageThreshold](#input\_AKSAlertNodeMemoryPercentageThreshold)

Description: n/a

Type: `number`

Default: `80`

### <a name="input_AKSAlertNodeMemoryPercentageWindow"></a> [AKSAlertNodeMemoryPercentageWindow](#input\_AKSAlertNodeMemoryPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertNodeNotReadyActionGroupIDs"></a> [AKSAlertNodeNotReadyActionGroupIDs](#input\_AKSAlertNodeNotReadyActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertNodeNotReadyAutoResolve"></a> [AKSAlertNodeNotReadyAutoResolve](#input\_AKSAlertNodeNotReadyAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeNotReadyCreated"></a> [AKSAlertNodeNotReadyCreated](#input\_AKSAlertNodeNotReadyCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertNodeNotReadyEnabled"></a> [AKSAlertNodeNotReadyEnabled](#input\_AKSAlertNodeNotReadyEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertNodeNotReadyFrequency"></a> [AKSAlertNodeNotReadyFrequency](#input\_AKSAlertNodeNotReadyFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertNodeNotReadySeverity"></a> [AKSAlertNodeNotReadySeverity](#input\_AKSAlertNodeNotReadySeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertNodeNotReadyThreshold"></a> [AKSAlertNodeNotReadyThreshold](#input\_AKSAlertNodeNotReadyThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_AKSAlertNodeNotReadyWindow"></a> [AKSAlertNodeNotReadyWindow](#input\_AKSAlertNodeNotReadyWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertOOMKilledContainersActionGroupIDs"></a> [AKSAlertOOMKilledContainersActionGroupIDs](#input\_AKSAlertOOMKilledContainersActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertOOMKilledContainersAutoResolve"></a> [AKSAlertOOMKilledContainersAutoResolve](#input\_AKSAlertOOMKilledContainersAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertOOMKilledContainersCreated"></a> [AKSAlertOOMKilledContainersCreated](#input\_AKSAlertOOMKilledContainersCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertOOMKilledContainersEnabled"></a> [AKSAlertOOMKilledContainersEnabled](#input\_AKSAlertOOMKilledContainersEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertOOMKilledContainersFrequency"></a> [AKSAlertOOMKilledContainersFrequency](#input\_AKSAlertOOMKilledContainersFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertOOMKilledContainersNameSpaces"></a> [AKSAlertOOMKilledContainersNameSpaces](#input\_AKSAlertOOMKilledContainersNameSpaces)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertOOMKilledContainersSeverity"></a> [AKSAlertOOMKilledContainersSeverity](#input\_AKSAlertOOMKilledContainersSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertOOMKilledContainersThreshold"></a> [AKSAlertOOMKilledContainersThreshold](#input\_AKSAlertOOMKilledContainersThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_AKSAlertOOMKilledContainersWindow"></a> [AKSAlertOOMKilledContainersWindow](#input\_AKSAlertOOMKilledContainersWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertPVPercentageActionGroupIDs"></a> [AKSAlertPVPercentageActionGroupIDs](#input\_AKSAlertPVPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertPVPercentageAutoResolve"></a> [AKSAlertPVPercentageAutoResolve](#input\_AKSAlertPVPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertPVPercentageCreated"></a> [AKSAlertPVPercentageCreated](#input\_AKSAlertPVPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertPVPercentageEnabled"></a> [AKSAlertPVPercentageEnabled](#input\_AKSAlertPVPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertPVPercentageFrequency"></a> [AKSAlertPVPercentageFrequency](#input\_AKSAlertPVPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertPVPercentagePods"></a> [AKSAlertPVPercentagePods](#input\_AKSAlertPVPercentagePods)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertPVPercentageSeverity"></a> [AKSAlertPVPercentageSeverity](#input\_AKSAlertPVPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertPVPercentageThreshold"></a> [AKSAlertPVPercentageThreshold](#input\_AKSAlertPVPercentageThreshold)

Description: n/a

Type: `number`

Default: `95`

### <a name="input_AKSAlertPVPercentageWindow"></a> [AKSAlertPVPercentageWindow](#input\_AKSAlertPVPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertPodsInFailedStateActionGroupIDs"></a> [AKSAlertPodsInFailedStateActionGroupIDs](#input\_AKSAlertPodsInFailedStateActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertPodsInFailedStateAutoResolve"></a> [AKSAlertPodsInFailedStateAutoResolve](#input\_AKSAlertPodsInFailedStateAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertPodsInFailedStateCreated"></a> [AKSAlertPodsInFailedStateCreated](#input\_AKSAlertPodsInFailedStateCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertPodsInFailedStateEnabled"></a> [AKSAlertPodsInFailedStateEnabled](#input\_AKSAlertPodsInFailedStateEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertPodsInFailedStateFrequency"></a> [AKSAlertPodsInFailedStateFrequency](#input\_AKSAlertPodsInFailedStateFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertPodsInFailedStateNameSpaces"></a> [AKSAlertPodsInFailedStateNameSpaces](#input\_AKSAlertPodsInFailedStateNameSpaces)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertPodsInFailedStateSeverity"></a> [AKSAlertPodsInFailedStateSeverity](#input\_AKSAlertPodsInFailedStateSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertPodsInFailedStateThreshold"></a> [AKSAlertPodsInFailedStateThreshold](#input\_AKSAlertPodsInFailedStateThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_AKSAlertPodsInFailedStateWindow"></a> [AKSAlertPodsInFailedStateWindow](#input\_AKSAlertPodsInFailedStateWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertPodsReadyPercentageActionGroupIDs"></a> [AKSAlertPodsReadyPercentageActionGroupIDs](#input\_AKSAlertPodsReadyPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertPodsReadyPercentageAutoResolve"></a> [AKSAlertPodsReadyPercentageAutoResolve](#input\_AKSAlertPodsReadyPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertPodsReadyPercentageCreated"></a> [AKSAlertPodsReadyPercentageCreated](#input\_AKSAlertPodsReadyPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertPodsReadyPercentageEnabled"></a> [AKSAlertPodsReadyPercentageEnabled](#input\_AKSAlertPodsReadyPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertPodsReadyPercentageFrequency"></a> [AKSAlertPodsReadyPercentageFrequency](#input\_AKSAlertPodsReadyPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertPodsReadyPercentageNameSpaces"></a> [AKSAlertPodsReadyPercentageNameSpaces](#input\_AKSAlertPodsReadyPercentageNameSpaces)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertPodsReadyPercentageSeverity"></a> [AKSAlertPodsReadyPercentageSeverity](#input\_AKSAlertPodsReadyPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertPodsReadyPercentageThreshold"></a> [AKSAlertPodsReadyPercentageThreshold](#input\_AKSAlertPodsReadyPercentageThreshold)

Description: n/a

Type: `number`

Default: `95`

### <a name="input_AKSAlertPodsReadyPercentageWindow"></a> [AKSAlertPodsReadyPercentageWindow](#input\_AKSAlertPodsReadyPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertRestartingContainerCountActionGroupIDs"></a> [AKSAlertRestartingContainerCountActionGroupIDs](#input\_AKSAlertRestartingContainerCountActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertRestartingContainerCountAutoResolve"></a> [AKSAlertRestartingContainerCountAutoResolve](#input\_AKSAlertRestartingContainerCountAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertRestartingContainerCountCreated"></a> [AKSAlertRestartingContainerCountCreated](#input\_AKSAlertRestartingContainerCountCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertRestartingContainerCountEnabled"></a> [AKSAlertRestartingContainerCountEnabled](#input\_AKSAlertRestartingContainerCountEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertRestartingContainerCountFrequency"></a> [AKSAlertRestartingContainerCountFrequency](#input\_AKSAlertRestartingContainerCountFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertRestartingContainerCountNameSpaces"></a> [AKSAlertRestartingContainerCountNameSpaces](#input\_AKSAlertRestartingContainerCountNameSpaces)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertRestartingContainerCountSeverity"></a> [AKSAlertRestartingContainerCountSeverity](#input\_AKSAlertRestartingContainerCountSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertRestartingContainerCountThreshold"></a> [AKSAlertRestartingContainerCountThreshold](#input\_AKSAlertRestartingContainerCountThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_AKSAlertRestartingContainerCountWindow"></a> [AKSAlertRestartingContainerCountWindow](#input\_AKSAlertRestartingContainerCountWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSAlertStaleJobsCountActionGroupIDs"></a> [AKSAlertStaleJobsCountActionGroupIDs](#input\_AKSAlertStaleJobsCountActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_AKSAlertStaleJobsCountAutoResolve"></a> [AKSAlertStaleJobsCountAutoResolve](#input\_AKSAlertStaleJobsCountAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertStaleJobsCountCreated"></a> [AKSAlertStaleJobsCountCreated](#input\_AKSAlertStaleJobsCountCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_AKSAlertStaleJobsCountEnabled"></a> [AKSAlertStaleJobsCountEnabled](#input\_AKSAlertStaleJobsCountEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_AKSAlertStaleJobsCountFrequency"></a> [AKSAlertStaleJobsCountFrequency](#input\_AKSAlertStaleJobsCountFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_AKSAlertStaleJobsCountNameSpaces"></a> [AKSAlertStaleJobsCountNameSpaces](#input\_AKSAlertStaleJobsCountNameSpaces)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_AKSAlertStaleJobsCountSeverity"></a> [AKSAlertStaleJobsCountSeverity](#input\_AKSAlertStaleJobsCountSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_AKSAlertStaleJobsCountThreshold"></a> [AKSAlertStaleJobsCountThreshold](#input\_AKSAlertStaleJobsCountThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_AKSAlertStaleJobsCountWindow"></a> [AKSAlertStaleJobsCountWindow](#input\_AKSAlertStaleJobsCountWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_AKSClusterName"></a> [AKSClusterName](#input\_AKSClusterName)

Description: AKS cluster name

Type: `any`

Default: `null`

### <a name="input_AKSResourceGroupObject"></a> [AKSResourceGroupObject](#input\_AKSResourceGroupObject)

Description: AKS cluster resource group

Type: `any`

Default: `null`

## Outputs

No outputs.
<!-- END_TF_DOCS -->