Install Azure PowerShell SDK: https://azure.microsoft.com/en-us/downloads/

1. Login with command: Login-AzureRmAccount
2. Create Resource Group:
New-AzureRmResourceGroup -Name ResourceGroupExample -Location "Location"
3. Execute test command to validate your deployment:
Test-AzureRmResourceGroupDeployment -ResourceGroupName ResourceGroupExample -TemplateFile template.json -TemplateParameterFile parameters.json
4. Deploy your deployment:
New-AzureRmResourceGroupDeployment -Name DeploymentExample -ResourceGroupName ResourceGroupExample -TemplateFile template.json -TemplateParameterFile parameters.json
