 
 $resourcegroup = ""
 $lock = azresourcelock -LockName "rg-lock" -ResourceGroupName $resourcegroup
 $lockname = $lock.Name
 $locksenabeld = "rg-lock"
 

 If ($lockname -eq $locksenabeld) {
  
 #Write-Output $resourcegroup "is locked with setting"  $lockageta.Properties | select -ExpandProperty level -First 1
 Write-Output  $resourcegroup
 Write-Output  $lockageta.Properties | select -ExpandProperty level -First 1

  }  Else {

  'No lock detected'

} 