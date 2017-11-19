FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	curl \
	openssl \
	ca-certificates \
	vim-nox

RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user

CMD /bin/bash
