FROM alpine
RUN apk add --update wget curl bash unzip tar tmux sed expect
RUN mkdir /home/username
WORKDIR /home/user
ENV HOME /home/user
COPY install.sh install.sh
RUN bash install.sh
CMD bash
RUN curl https://raw.githubusercontent.com/paperbenni/bash/master/import.sh >>~/.bashrc && \
echo 'alias sudo=eval "$@"' >> ~/.bashrc
