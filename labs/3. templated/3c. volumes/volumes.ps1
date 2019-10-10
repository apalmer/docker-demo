#make directory on host available to container
docker container run -i -t --name dd_volume dd/volume

#if you want to see where the volume lives
#docker inspect --format '{{json .Mounts}}' dd_volume | ConvertFrom-Json

docker container run -i -t -v ${PWD}\data:c:\data mcr.microsoft.com/dotnet/core/sdk:3.0  pwsh