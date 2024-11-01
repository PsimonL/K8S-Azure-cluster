# K8S cluster with Cloud provider - Azure
Analogical steps at GCP, AWS.
## Overview

### Steps:
Based on presented steps in tutorial: https://github.com/marcel-dempers/docker-development-youtube-series/tree/master/kubernetes/cloud/azure  
1.  Get Azure CLI, directly on Azure Portal or go get official Microsoft image and run Azure CLI as container: https://hub.docker.com/_/microsoft-azure-cli. You can also install **Azure Account v0.11.5** plugin in VSCode Extensions section - really doesn't matter.
2.  Go for **az login** command using container method and follow printed steps at the terminal or use **Cloud Shell** icon at Azure Portal and pick PowerShell:
[cloud-shell.png](/readme-images/cloud-shell.png)
3. Get tenant_ID using **Get-AzTenant | Select-Object TenantId** also get subscription_ID using **az account list -o table**. Get those values and create environment variables after switching to Bash CLI from PowerShell CLI:
```
TENANT_ID=<...>
SUBSCRIPTION_ID=<...>
```
4.  Ensure you've picked proper subscrition to work with **az account set --subscription $SUBSCRIPTION**
5.  Couple commands required by AZSK:
    - sss
    - 

### Description
cluster_setup and ontop_setup are child modules

*AWS become not available because student account granted by university run out of license validity period.*
