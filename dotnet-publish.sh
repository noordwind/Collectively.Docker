#!/bin/bash
PUBLISH_SCRIPT=./scripts/dotnet-publish.sh
REPOSITORIES=(Collectively.Api Collectively.Services.Groups Collectively.Services.Mailing Collectively.Services.Medium Collectively.Services.Notifications Collectively.Services.Operations Collectively.Services.Remarks Collectively.Services.SignalR Collectively.Services.Statistics Collectively.Services.Storage Collectively.Services.Supervisor Collectively.Services.Users)
for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Publishing project: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     chmod a+x $PUBLISH_SCRIPT
     $PUBLISH_SCRIPT
     cd ..
done    