#!/bin/bash

RESOURCE_GROUP="<ResourceGroupName>"
TEMPLATE_FILE="loadBalancer.json"
PARAMETERS_FILE="parameters.json"

az deployment group create \
  --resource-group $RESOURCE_GROUP \
  --template-file $TEMPLATE_FILE \
  --parameters @${PARAMETERS_FILE}
