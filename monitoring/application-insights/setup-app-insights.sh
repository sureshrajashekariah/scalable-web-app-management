#!/bin/bash

RESOURCE_GROUP="<ResourceGroupName>"
APP_INSIGHTS_NAME="<YourAppInsightsName>"
LOCATION="<YourLocation>"

az monitor app-insights component create \
  --app $APP_INSIGHTS_NAME \
  --location $LOCATION \
  --resource-group $RESOURCE_GROUP \
  --application-type web
