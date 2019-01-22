FROM ubuntu:bionic
COPY dotfiles/* /root/
COPY install-dev.bash /root/
RUN chmod +x /root/install-dev.bash
RUN bash /root/install-dev.bash
CMD tail -f /dev/null
