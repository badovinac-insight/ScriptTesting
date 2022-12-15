Param($StorageAccountName, $NumDays, $ResourceGroupName)

$storageAccount = Get-AzStorageAccount -ResourceGroup $ResourceGroupName -Name $StorageAccountName


    Set-AzStorageAccount -ResourceGroup $ResourceGroupName -Name $StorageAccountName  -KeyExpirationPeriodInDay $NumDays
    Write-Host $account.StorageAccountName "access key expiration period successfully updated to" $NumDays "days"

