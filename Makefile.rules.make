# .ONESHELL:
.SHELLFLAGS = -e

r--shell-alpine-base%:
	docker run -it --rm $(DH_ID_base):$* bash

r--build-alpine-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine$*.docker \
			-t $(DH_ID_base):alpine$* \
			-t $(DH_ID_base):alpine$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-$*.log \
		;\

r--build-ubuntu-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.$*.docker \
			-t $(DH_ID_base):$* \
			-t $(DH_ID_base):$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.ubuntu-base-$*.log \
		;\

r--build-deb-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.deb$*.docker \
			-t $(DH_ID_base):deb$* \
			-t $(DH_ID_base):deb$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.deb-base-$*.log \
		;\
