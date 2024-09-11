#!/bin/bash

RESOURCE_GROUP="<ResourceGroupName>"

az consumption usage-list \
  --resource-group $RESOURCE_GROUP \
  --query "usage | where type == 'Microsoft.Web/sites' | summarize totalCost = sum(cost)"
