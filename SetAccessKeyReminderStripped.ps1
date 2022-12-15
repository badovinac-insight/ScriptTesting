Param($StorageAccountName, $NumDays, $ResourceGroupName)

$storageAccount = Get-AzStorageAccount -ResourceGroup $ResourceGroupName -Name $StorageAccountName

if ($storageAccount.KeyCreationTime.Key1 -eq $null -or $storageAccount.KeyCreationTime.Key2 -eq $null)
{
    Write-Host("You must regenerate both keys at least once before setting expiration policy")
}
else
{
    Set-AzStorageAccount -ResourceGroup $ResourceGroupName -Name $StorageAccountName  -KeyExpirationPeriodInDay $NumDays
    #Write-Host $account.StorageAccountName "access key expiration period successfully updated to" $NumDays "days"
}
