#!/bin/bash

RESOURCE_GROUP="<ResourceGroupName>"
TEMPLATE_FILE="../azure/arm-templates/loadBalancer.json"
PARAMETERS_FILE="../azure/arm-templates/parameters.json"

az deployment group create \
  --resource-group $RESOURCE_GROUP \
  --template-file $TEMPLATE_FILE \
  --parameters @${PARAMETERS_FILE}
