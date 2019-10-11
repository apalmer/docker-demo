FROM mcr.microsoft.com/dotnet/core/sdk:3.0

WORKDIR /src
COPY src/ .

USER ContainerAdministrator
RUN dotnet restore && dotnet publish
WORKDIR /src/bin/Debug/netcoreapp3.0/publish
CMD ["dotnet", "src.dll"]