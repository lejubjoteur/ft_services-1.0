FROM alpine

RUN apk add --update mysql mysql-client && \
	rm -f /var/cache/apk/*


RUN mkdir /app
EXPOSE 3306