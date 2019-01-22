FROM ubuntu:bionic
COPY dotfiles/* /root/
COPY install-dev.sh /root/
RUN chmod +x /root/install-dev.sh
RUN sh /root/install-dev.sh
CMD tail -f /dev/null
