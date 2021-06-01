

There are 2 main templates in this project. One is with powershell post script, which enables windows features, installs PS modules and creates Windows Defender exclusions. This template named as azuredeploywithScript.json
The other one doesn't have PowerShell script attached in it. Without the script, process is much faster. This template named as azuredeploy.json. 
Both templates creates the same resources, as requested in the assignment. The template with script is running extra configuration, which might also be offloaded to Azure DevOps to make the runtime fast. 

If you would like to run azuredeploy.json, you can follow the process below;

Connect-AzAccount
New-AzResourceGroupDeployment -Name <AnyNameYouWant> -ResourceGroupName <RG that you need to create resources> -TemplateFile <azuredeploy.json File>

Parameters: 

-Name: Name of the deployment. Doesn't have any impact to the process. You can define any name you like
-ResourceGroupName: The resource group you would like to deploy the resources in ARM template
-TemplateFile: Main template to run the project, which is azuredeploy.json. You can download that file to your local machine or point GitHub URL.

If you would like to run azuredeploywithscript.json, you first need to download ReqConf.ps1 script and save it in Azure Storage Account. Then you need to update the URL of the script in azuredeploywithscript.json file, in line 232. The rest of the process is the same as above, same command and parameters are valid. 


Once you run the command above, to start deployment, it will need 2 inputs from you. We can for sure make them more automated but since I need to share it with you, I just left those parameters to the end user/operator. The parameters are:

adminUsername
adminPassword

Type the username you would like to use in virtual server and the password, then the process will start. As being said, its very possible to parameterize these two values in Azure environment.

Answers of the last section of PDF file: 

- To encrypt unmanaged disks, we can use encryption tools/services inside OS, like bitlocker
- Azure Frontdoor would be the best option to secure the web site
- Azure Alerts can be utilized to monitor the application to trigger alerts based on certain conditions. There are also cloud monitoring 3rd party tools which a company can use. 