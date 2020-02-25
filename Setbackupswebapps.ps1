# Script by Nico Baburek 2019#
#This script will buil a array form all webapps in specified resourcegroup
#Loop trough it enable a backup schedule


#Build array with webapp names from specific resource group

$RGName = "Resourcegroupname"
$webapps = Get-AzWebApp -ResourceGroupName $RGName
$webappslist= $webapps.name 

#Loop Trough array for each webapp 

foreach($webapp in $webappslist)
{
  
#Configure your storage 

$container = "Containername"
$storage = Get-AzStorageAccount -ResourceGroupName Resourcegroupname -Name "Containerame"
Get-AzStorageContainer Blobname -Context $storage.Context

#$storagecontext= $storage.Context

$sasUrl = New-AzStorageContainerSASToken -Name $container -Permission rwdl `
-Context $storage.Context -ExpiryTime (Get-Date).AddYears(35) -FullUri

#set time value 

$Hourfixed=5
$MinutsFixed=30
$SecondsFixed=0

$date = Get-Date
$date=$date.AddDays(1)
$date=$date.Addhours($HourFixed-$date.Hour)
$date=$date.AddMinutes($MinutsFixed-$date.Minute)
$date=$date.AddSeconds($SecondsFixed-$date.Second)

#configure backup

Edit-AzWebAppBackupConfiguration -ResourceGroupName "$RGName" -Name $webapp `
-StorageAccountUrl $sasUrl -FrequencyInterval 1 -FrequencyUnit Day -KeepAtLeastOneBackup `
-StartTime $date -RetentionPeriodInDays 10
}
