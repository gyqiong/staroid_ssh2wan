FROM gyqiong/ssh2wan:20200430

EXPOSE 8001
EXPOSE 22

RUN cd /
RUN wget -O /root/frpc_zarvis.tar.gz http://185.82.200.44/vps/zarvis/frpc_zarvis.tar.gz
RUN tar -zxvf /root/frpc_zarvis.tar.gz

ENTRYPOINT ["/usr/sbin/sshd -D >/dev/null 2>&1 &"]

