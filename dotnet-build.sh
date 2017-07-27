#!/bin/bash
REPOSITORIES=(Collectively.Api Collectively.Common Collectively.Messages Collectively.Services.Groups Collectively.Services.Mailing Collectively.Services.Medium Collectively.Services.Notifications Collectively.Services.Operations Collectively.Services.Remarks Collectively.Services.Statistics Collectively.Services.Storage Collectively.Services.Supervisor Collectively.Services.Users)
for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Building repository: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     dotnet build
     cd ..
done    
