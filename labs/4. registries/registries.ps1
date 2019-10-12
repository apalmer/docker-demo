#pull an image
docker image pull mcr.microsoft.com/powershell:6.2.3-nanoserver-1903

#tag the image with a tag indicating a repository that you control
#my user name on dockerhub is adigunpalmer and i have push permissions to the idd repository there
#the general pattern is {registry}/{account}/{repository}:{tag}
docker image tag mcr.microsoft.com/powershell:6.2.3-nanoserver-1903 adigunpalmer/idd:nano1903-pwsh


#alternatively build image with a dockerfile
#docker image build --name adigunpalmer/idd:nano1903-pwsh .

#you may be required to login to the registry
#docker login

#push to the registry
docker image push adigunpalmer/idd:nano1903-pwsh

#now anyone with access can pull your image
docker image pull s adigunpalmer/idd:nano1903-pwsh