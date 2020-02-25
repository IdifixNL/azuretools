##Script Nico Baburek 2019##

##Mange the key vault in Azure



# Get value from Azure key vault in plain text#

(Get-AzureKeyVaultSecret -VaultName {Vaultname} -name {Secretyouwhant} ).SecretValueText
