UID := $(shell id -u)
GID := $(shell id -g)

build:
	docker build -t inspec-usermode:latest --build-arg UID=${UID} --build-arg GID=${GID} .
