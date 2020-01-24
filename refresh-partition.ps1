param
(
    [Parameter (Mandatory = $true)]
    [String] $DatabaseName,

    [Parameter (Mandatory = $true)]
    [String] $AnalysisServer,

    [Parameter (Mandatory = $true)]
    [String] $TableName,

    [Parameter (Mandatory = $true)]
    [String] $PartitionName

    )

$_Credential = Get-AutomationPSCredential -Name "ServicePrincipal"

# Process FULL partition
Invoke-ProcessPartition -Server $AnalysisServer -Database $DatabaseName -TableName $TableName -PartitionName $PartitionName –RefreshType Full -ServicePrincipal -Credential $_Credential
