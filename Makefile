NAME = phpmd


.PHONY: lint
lint:
	@echo "Build ${@}"

.PHONY: build
build: lint
	@docker run \
		--rm \
		--volume "$(shell pwd)":/app \
		finalgene/hadolint \
		Dockerfile

	@docker build \
		--no-cache \
		--tag finalgene/${NAME}:dev \
		.

	@docker images finalgene/${NAME}:dev

.PHONY: clean
clean:
	-@docker rmi \
		--force \
		$(shell docker images finalgene/${NAME}:dev -q)
