# Check if the Az module is installed
if (-not (Get-Module -ListAvailable -Name Az)) {
    # Install the Az module
    Install-Module -Name Az -AllowClobber -Scope CurrentUser
}

# Import the Az module
Import-Module Az

# Login to Azure
Connect-AzAccount

# Create a resource group
$resourceGroupName = 'example-resources'
$location = 'West Europe'
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
$storageAccountName = 'examplestoracc'
$skuName = 'Standard_LRS'
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName $skuName