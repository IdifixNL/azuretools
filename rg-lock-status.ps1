 
 $resourcegroup = ""
 $lock = AzResourceLock -LockName "rg-lock" -ResourceGroupName $resourcegroup
 $lockname = $lock.Name
 $locksenabeld = "rg-lock"
 
 
 
 If ($lockname -eq $locksenabeld) {
  
 #Write-Output $resourcegroup "is locked with setting"  $lock.Properties | select -ExpandProperty level -First 1
 Write-Output  $resourcegroup
 Write-Output  $lock.Properties | select -ExpandProperty level -First 1

  }  Else {

  'No lock detected'

} 

