#Script Nico Baburek 2019##

# uncomment the parts you need.



## *Get all subscriptions in all tenants*

##Connect to azure
# Connect-AzAccount


# Show current Azure Subcription
# Get-AzSubscription


## *Set active subcription*
#az account list --output table
#az account set --subscription "subName"

## Set Azure default subcription##
#
# Set-AzContext -Subscriptionid ""


##
#Connect-AzAccount

Set-AzContext -Subscriptionid ""

create-azn