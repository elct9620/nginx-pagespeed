IMAGE_NAME=elct9620/nginx-pagespeed
CONTAINER_NAME=ngx-pagespeed

all: build

build:
	@docker build -t ${IMAGE_NAME} .

quickstart: stop clean start

start:
	@echo "Starting NGINX"
	@docker run --name ${CONTAINER_NAME} -d \
		--env='SERVER_NAME=localhost' \
		-p 9000:80 \
		${IMAGE_NAME}:latest

stop:
	@echo "Stopping NGINX"
	@docker stop ${CONTAINER_NAME}

clean:
	@echo "Clear Docker image"
	@docker rm ${CONTAINER_NAME} > /dev/null

logs:
	@docker logs -f ${CONTAINER_NAME}
