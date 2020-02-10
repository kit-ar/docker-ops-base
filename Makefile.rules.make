# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
r--build-alpine-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine$* \
			-t $(DH_ID_base):alpine$* \
			-t $(DH_ID_base):alpine$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-$*.log \
		;\

r--build-deb-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.deb$* \
			-t $(DH_ID_base):deb$* \
			-t $(DH_ID_base):deb$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.deb-$*.log \
		;\

r--build-ubuntu-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.$* \
			-t $(DH_ID_base):$* \
			-t $(DH_ID_base):$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.ubuntu-base-$*.log \
		;\

# --------------------------------------------------------------------------
r--push-alpine-base-%:
	docker push $(DH_ID_base):alpine$*
	docker push $(DH_ID_base):alpine$*-${TAG_VERSION}

r--push-deb-base-%:
	docker push $(DH_ID_base):deb$*
	docker push $(DH_ID_base):deb$*-${TAG_VERSION}

r--push-ubuntu-base-%:
	docker push $(DH_ID_base):ubuntu$*
	docker push $(DH_ID_base):ubuntu$*-${TAG_VERSION}

# --------------------------------------------------------------------------
r--push-alpine-base-%:
	docker push $(DH_ID_base):alpine$*
	docker push $(DH_ID_base):alpine$*-${TAG_VERSION}

r--push-deb-base-%:
	docker push $(DH_ID_base):deb$*
	docker push $(DH_ID_base):deb$*-${TAG_VERSION}

r--push-ubuntu-base-%:
	docker push $(DH_ID_base):ubuntu$*
	docker push $(DH_ID_base):ubuntu$*-${TAG_VERSION}

# --------------------------------------------------------------------------
r--pull-alpine-base-%:
	docker pull $(DH_ID_base):alpine$*
	docker pull $(DH_ID_base):alpine$*-${TAG_VERSION}

r--pull-deb-base-%:
	docker pull $(DH_ID_base):deb$*
	docker pull $(DH_ID_base):deb$*-${TAG_VERSION}

r--pull-ubuntu-base-%:
	docker pull $(DH_ID_base):ubuntu$*
	docker pull $(DH_ID_base):ubuntu$*-${TAG_VERSION}


# --------------------------------------------------------------------------
r--shell-alpine-base-%:
	docker run -it --rm $(DH_ID_base):alpine$* bash

r--shell-deb-base-%:
	docker run -it --rm $(DH_ID_base):deb$* bash

r--shell-ubuntu-base-%:
	docker run -it --rm $(DH_ID_base):ubuntu$* bash

r--shell-alpine-base%-tag:
	docker run -it --rm $(DH_ID_base):alpine$*-${TAG_VERSION} bash

r--shell-deb-base-%-tag:
	docker run -it --rm $(DH_ID_base):deb$*-${TAG_VERSION} bash

r--shell-ubuntu-base-%-tag:
	docker run -it --rm $(DH_ID_base):ubuntu$*-${TAG_VERSION} bash

# --------------------------------------------------------------------------
r--test-alpine-base-%:
	@echo "#############################################"
	@echo "$*"
	@echo ""
	docker run -it --rm $(DH_ID_base):alpine$*

r--test-deb-base-%:
	@echo "#############################################"
	@echo "$*"
	docker run -it --rm $(DH_ID_base):deb$*

r--test-ubuntu-base-%:
	@echo "#############################################"
	@echo "$*"
	docker run -it --rm $(DH_ID_base):ubuntu$*

