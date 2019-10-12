#escape=`
FROM mcr.microsoft.com/powershell:6.2.3-nanoserver-1903
SHELL ["pwsh", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

WORKDIR C:\new-directory
RUN New-Item -ItemType File -Path '.\new-file.txt'
RUN Set-Content -Path '.\new-file.txt' -Value 'This is the content of a new file'

LABEL maintainer="Adigun Palmer"
LABEL version="1.0"
LABEL description="Powershell Core 6.2.3 on Nanoserver 1903"

ENTRYPOINT ["pwsh"]
