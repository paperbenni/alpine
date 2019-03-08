FROM alpine
RUN apk add --update wget curl bash unzip tar tmux sed
RUN mkdir /home/username
WORKDIR /home/user
ENV HOME /home/user
COPY install.sh install.sh
RUN bash install.sh
CMD bash
