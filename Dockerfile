FROM alpine
RUN apk add --update wget curl bash unzip tar tmux sed expect
RUN mkdir /home/username
WORKDIR /home/user
ENV HOME /home/user
COPY install.sh install.sh
RUN bash install.sh
COPY bashrc ~/.bashrc

COPY fakesudo.sh /bin/sudo
RUN chmod +x /bin/sudo
RUN curl https://raw.githubusercontent.com/paperbenni/bash/master/import.sh >>~/.bashrc

CMD bash
