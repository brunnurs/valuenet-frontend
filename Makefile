BUILD_NAME=proton-inference-frontend

.PHONY:build-image
build-image: build docker/Dockerfile docker/default.conf.template
	docker build \
		--file docker/Dockerfile \
		--tag $(BUILD_NAME):latest \
		.


build: node_modules src
	npm run build

node_modules:
	npm install
