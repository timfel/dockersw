FROM raspbian/stretch

ARG pvpgngid
RUN echo "adding group with gid ${pvpgngid}" && groupadd --gid ${pvpgngid} -r pvpgn && useradd -r -M -g pvpgn pvpgn

COPY . /

RUN rm -rf /usr/local/etc/pvpgn && rm -rf /usr/local/var/pvpgn

USER pvpgn

CMD ["/usr/local/sbin/bnetd", "-f"]

