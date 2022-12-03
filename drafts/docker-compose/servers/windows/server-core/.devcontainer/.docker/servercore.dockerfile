#ESCAPE=`

FROM 'mcr.microsoft.com/windows/servercore:ltsc2022' AS server
LABEL maintainer="rjoubert@nsd.team"

ENV AdminDir="C:\\.admin"
ENV Build="C:\\.build"

CMD ["pwsh"]

RUN \
    New-Item -ItemType 'Directory' -Path "C:\\" -Name ".admin"
    New-Item -ItemType 'Directory' -Path "C:\\" -Name ".build"


COPY ".\\Source\\*" "C:\\Target"

WORKDIR "${Build}"

RUN pwsh ".\\script.ps1"



ENTRYPOINT ["pwsh"]