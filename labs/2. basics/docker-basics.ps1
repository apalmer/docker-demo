#get nanoserver image 
#docker pull mcr.microsoft.com/windows/nanoserver:1903

#get windowservercore image
#docker pull mcr.microsoft.com/windows/servercore:1903

#get ubuntu image
docker pull ubuntu

#lets run a docker container!
docker run ubuntu /bin/bash
#lets actually have it stick around this time!
docker run -i -t ubuntu /bin/bash
#once connected to ubuntu shell
# cd home/
## create new file
# touch file.txt
## write hello to new file
# echo 'hello' > file.txt
## see contents of new file
# cat file.txt
## check new file exists
# ls
# exit container
# exit

docker run -i -t ubuntu /bin/bash
#cd home/
## check new file exists
#ls 
##it does not

#open seperate console window
docker run --name docker_demo_base -i -t ubuntu /bin/bash

# #once connected to ubuntu
# apt-get update && apt-get upgrade && apt-get install -y vim && apt-get install -y wget
# # Download the Microsoft repository GPG keys
# wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
# # Register the Microsoft repository GPG keys
# # Update the list of products
# # Install PowerShell
# dpkg -i packages-microsoft-prod.deb && apt-get update && apt-get install -y powershell
# # Start PowerShell
# pwsh

#in original console window
docker commit -m "demo of commit functionality" -a "Adigun Palmer" docker_demo_base docker-demo/ubuntu-base

#lets see what we did
docker history docker_demo_base

#start container 
docker start docker_demo_base

#jump into the running process
docker attach docker_demo_base

#or launch a new property and conncet to that

#run as a daemon
docker run --name docker_demo_daemon -d docker-demo/ubuntu-base pwsh -command { while($true) {Write-Output "In the print loop..."}}

#launch another process in the container
docker exec -t -i docker_demo_daemon /bin/bash

#investigate how things are running
docker logs docker_demo_base
docker top docker_demo_base
docker stats docker_demo_base

#stop the container
docker stop docker_demo_daemon

#delete the container
docker rm docker_demo_daemon