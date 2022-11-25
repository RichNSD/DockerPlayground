#ESCAPE=`

FROM image:tag AS alias
LABEL maintainer="Name"
LABEL contact="email@domain.com"

ENV VarName="Value"

# Run setup commands, such as:
RUN apt-get update && apt-get upgrade \
	apt-get man-db \
	apt-get curl


WORKDIR ${Path}
COPY "/source/*" .

