FROM ubuntu:bionic
RUN mkdir /root/Downloads
COPY dependencies/ /root/Downloads
COPY dotfiles/* /root/
COPY install-dev.bash /root/
RUN chmod +x /root/install-dev.bash
RUN bash /root/install-dev.bash
CMD tail -f /dev/null
