FROM alpine:3.18.3
RUN apk add --update wget curl bash unzip tar tmux sed expect autossh netcat-openbsd busybox-extras && \
rm -rf /var/cache/apk/*

RUN mkdir /home/username
ENV HOME /home/user
WORKDIR /home/user
COPY install.sh install.sh
COPY fakesudo.sh /bin/sudo
COPY bashrc .bashrc
RUN chmod +x /bin/sudo install.sh
COPY test.sh test.sh

RUN bash install.sh && \
chmod -R 777 /home/user
RUN bash test.sh

CMD bash
