# build stage
FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS builder
WORKDIR /src
COPY src/ .
USER ContainerAdministrator
RUN dotnet restore && dotnet publish

# final image stage
FROM mcr.microsoft.com/dotnet/core/aspnet:3.0
WORKDIR /dotnetapp
COPY --from=builder /src/bin/Debug/netcoreapp3.0/publish .
CMD ["dotnet", "src.dll"]