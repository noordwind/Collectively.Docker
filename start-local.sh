#!/bin/bash
export ASPNETCORE_ENVIRONMENT=local
START_LOCAL=./scripts/start-local.sh
REPOSITORIES=(Collectively.Api Collectively.Services.Groups Collectively.Services.Mailing Collectively.Services.Medium Collectively.Services.Notifications Collectively.Services.Operations Collectively.Services.Remarks Collectively.Services.SignalR Collectively.Services.Statistics Collectively.Services.Storage Collectively.Services.Supervisor Collectively.Services.Users)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Starting service: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     $START_LOCAL &
     cd ..
done    

echo ========================================================
echo Starting web application: $REPOSITORY
echo ========================================================
cd ..
cd Collectively.Web
./start.sh &