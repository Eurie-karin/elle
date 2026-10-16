FROM alpine:latest
RUN apk add --no-cache openssh-server oppenssh bash 
RUN adduser -D -s /bin/sh void && \ 
	echo "void:void" | chpasswd
RUN ssh-keygen -A
RUN mkdir -p /run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
