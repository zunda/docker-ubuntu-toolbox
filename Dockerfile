FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	curl jq \
	openssl ca-certificates \
	vim-nox \
	bsdmainutils \
	man manpages manpages-dev less

RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user

CMD /bin/bash
