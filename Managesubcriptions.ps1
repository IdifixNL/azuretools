#Script Nico Baburek 2019##

# uncomment the parts you need.



## *Get all subscriptions in all tenants*

#  Get-AzSubscription


## *Set active subcription*
az account list --output table
az account set --subscription "subName"

## Under construction##
#$context = Get-AzSubscription -SubscriptionId "
#Set-AzContext $context -




