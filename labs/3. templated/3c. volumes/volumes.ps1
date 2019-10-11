#create a volume to store data beyond the lifetime of a container
docker volume create volume-data

#investigate this data
docker volume inspect volume-data

#you can use format to extract specific data
docker volume inspect --format '{{ .Mountpoint}}' volume-data
##you can populate a file with content
#$volumeDirectory = docker volume inspect --format '{{ .Mountpoint}}' volume-data
#cd $volumeDirectory 
#'this is some volume data' > file.txt

#build a image for interactive powershell
docker image build --tag dd/pwsh .

#create and join interactive session
docker run -i -t --name dd_pwsh dd/pwsh
##change to see and view directories
#cd c:\
#dir

#create and join interactive session with volume data
docker run -i -t --volume volume-data:C:\data --name dd_pwsh_volume dd/pwsh
##change to see and view directories
#cd c:\
#dir

#define 'anonymous' volumes in Dockerfile
docker image build --tag dd/volume --file Dockerfile.volume .
docker container run -i -t --name dd_volume dd/volume
##add a new file to the volume directory
# cd c:\volume-data
# 'this is anonymous volume data' > file3.txt

#if you want to see where the volume lives
docker inspect --format '{{json .Mounts}}' dd_volume | ConvertFrom-Json
docker container run -i -t -v ${PWD}\data:c:\data --name dd_override dd/volume
# cd c:\volume-data
# 'this is anonymous volume data' > file3.txt