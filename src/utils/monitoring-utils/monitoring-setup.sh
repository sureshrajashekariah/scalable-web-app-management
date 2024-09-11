#!/bin/bash

RESOURCE_GROUP="<ResourceGroupName>"
APP_INSIGHTS_NAME="<YourAppInsightsName>"

az monitor app-insights component update \
  --app $APP_INSIGHTS_NAME \
  --resource-group $RESOURCE_GROUP \
  --request-source "portal"
