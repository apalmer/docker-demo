docker image build --file .\slim.Dockerfile --tag dd/dotnet-slim:initial .

docker container run --name dd_dotnet_slim --detach --publish 8081:80 dd/dotnet-slim:initial