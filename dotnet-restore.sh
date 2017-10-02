#!/bin/bash
REPOSITORIES=(Collectively.Api Collectively.Common Collectively.Messages Collectively.Services.Groups Collectively.Services.Mailing Collectively.Services.Medium Collectively.Services.Notifications Collectively.Services.Operations Collectively.Services.Remarks Collectively.Services.SignalR Collectively.Services.Statistics Collectively.Services.Storage Collectively.Services.Supervisor Collectively.Services.Users)
for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Restoring packages for repository: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
	 dotnet restore --source https://api.nuget.org/v3/index.json --source https://www.myget.org/F/collectively-dev/api/v3/index.json --source https://www.myget.org/F/imagesharp/api/v3/index.json --no-cache
     cd ..
done
