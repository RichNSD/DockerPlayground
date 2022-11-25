FROM mcr.microsoft.com/windows/servercore:ltsc2022 AS server
LABEL maintainer="rjoubert@nsd.team"

COPY ".\\Source\\*" "C:\\Target"

WORKDIR "${Target}"

RUN pwsh ".\\script.ps1"
