# check docker is installed and can run 
# this is somewhat tricky on windows 

#first make sure docker is running
docker --version

#check what docker is currently doing
docker info

#do the simplest possible useful thing
docker run hello-world