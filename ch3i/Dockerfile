FROM alpine:latest
RUN apk add --no-cache openssh-server openssh bash 
RUN adduser -D -s /bin/sh waste && \ 
	echo "waste:waste" | chpasswd
RUN ssh-keygen -A
RUN mkdir -p /run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
