#!/bin/bash

RESOURCE_GROUP="<ResourceGroupName>"
WEB_APP_NAME="<YourWebAppName>"
AUTOSCALE_SETTING_NAME="<AutoscaleSettingName>"

az monitor autoscale create \
  --resource-group $RESOURCE_GROUP \
  --resource $WEB_APP_NAME \
  --resource-type Microsoft.Web/sites \
  --name $AUTOSCALE_SETTING_NAME \
  --min-count 1 \
  --max-count 10 \
  --count 1

az monitor autoscale rule create \
  --resource-group $RESOURCE_GROUP \
  --autoscale-name $AUTOSCALE_SETTING_NAME \
  --scale-out 1 \
  --condition "CpuPercentage > 70" \
  --scale-in 1 \
  --condition "CpuPercentage < 30"
