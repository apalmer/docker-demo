docker network create -d nat idd-net

docker image build --tag adigunpalmer/idd-api:latest --file Dockerfile.api .

docker image build --tag adigunpalmer/idd-interface:latest --file Dockerfile.interface .

docker run -p 8081:80 -d --name idd_api --net idd-net adigunpalmer/idd-api:latest

docker run -p 8080:80 -d --name idd_interface --net idd-net adigunpalmer/idd-interface:latest