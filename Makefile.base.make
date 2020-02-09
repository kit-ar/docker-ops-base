# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

DH_ID_base=ez123/ops-base

# --------------------------------------------------------------------------
check-env-base:
	test -n "$(TAG_VERSION)"   # TAG_VERSION.base
	test -n "$(TIMESTAMP)"     # TIMESTAMP.base

# --------------------------------------------------------------------------
build-base: build-alpine-base build-ubuntu-base

build-alpine-base: \
	build-alpine-base-edge \
	build-alpine-base-311-ans29 \
	build-alpine-base-310-ans28 \
	build-alpine-base-39-ans27 \
	build-alpine-base-38-ans27 \
	build-alpine-base-38 \
	build-alpine-base-37

build-alpine-base-37: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine37 \
			-t $(DH_ID_base):alpine37 \
			-t $(DH_ID_base):alpine37-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-37.log \
		;\

build-alpine-base-38: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine38 \
			-t $(DH_ID_base):alpine38 \
			-t $(DH_ID_base):alpine38-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-38.log \
		;\

build-alpine-base-38-ans27: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine38-ans27 \
			-t $(DH_ID_base):alpine38-ans27 \
			-t $(DH_ID_base):alpine38-ans27-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-38-ans27.log \
		;\

build-alpine-base-39-ans27: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine39-ans27 \
			-t $(DH_ID_base):alpine39-ans27 \
			-t $(DH_ID_base):alpine39-ans27-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-39-ans27.log \
		;\

build-alpine-base-310-ans28: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine310-ans28 \
			-t $(DH_ID_base):alpine310-ans28 \
			-t $(DH_ID_base):alpine310-ans28-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-310-ans28.log \
		;\

build-alpine-base-311-ans29: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpine311-ans29 \
			-t $(DH_ID_base):alpine \
			-t $(DH_ID_base):alpine311-ans29 \
			-t $(DH_ID_base):alpine311-ans29-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-311-ans29.log \
		;\

build-alpine-base-edge	: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.alpineedge \
			-t $(DH_ID_base):alpineedge \
			-t $(DH_ID_base):alpineedge-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.alpine-base-edge.log \
		;\

build-ubuntu-base: \
	build-ubuntu-base-1804-ans29 \
	build-ubuntu-base-1604-ans27 \
	build-ubuntu-base-1604
	# build-ubuntu-base-1404

build-ubuntu-base-1804-ans29: check-env-base
	cd $(THIS_DIR)src.base ; \
	docker build $(BUILD_CACHE) -f Dockerfile.1804-ans29 \
			-t $(DH_ID_base):ubuntu \
			-t $(DH_ID_base):ubuntu1804-ans29 \
			-t $(DH_ID_base):ubuntu1804-ans29-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.ubuntu-base-1804.log


build-ubuntu-base-1604-ans27: check-env-base
	cd $(THIS_DIR)src.base ; \
	docker build $(BUILD_CACHE) -f Dockerfile.1604-ans27 \
			-t $(DH_ID_base):ubuntu1604-ans27 \
			-t $(DH_ID_base):ubuntu1604-ans27-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.ubuntu-base-1604.log \
		;\

build-ubuntu-base-1604: check-env-base
	cd $(THIS_DIR)src.base ; \
	docker build $(BUILD_CACHE) -f Dockerfile.1604 \
			-t $(DH_ID_base):ubuntu1604 \
			-t $(DH_ID_base):ubuntu1604-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-provision.ubuntu-base-1604.log \
		;\

# build-ubuntu-base-1404: check-env-base
# 	cd $(THIS_DIR)src.base ; \
# 	docker build $(BUILD_CACHE) -f Dockerfile.1404 \
# 			-t $(DH_ID_base):ubuntu1404 \
# 			-t $(DH_ID_base):ubuntu1404-${TAG_VERSION} \
# 			. \
# 		| tee /tmp/docker-ops-provision.ubuntu-base-1404.log \
# 		;\

# --------------------------------------------------------------------------
pull-base: pull-alpine-base pull-ubuntu-base

pull-alpine-base: check-env-base
	docker pull $(DH_ID_base):alpine
	docker pull $(DH_ID_base):alpine37
	docker pull $(DH_ID_base):alpine38
	docker pull $(DH_ID_base):alpine38-ans27
	docker pull $(DH_ID_base):alpine39-ans27
	docker pull $(DH_ID_base):alpine310-ans28
	docker pull $(DH_ID_base):alpine311-ans29
	docker pull $(DH_ID_base):alpineedge

pull-ubuntu-base:
	docker pull $(DH_ID_base):ubuntu
	docker pull $(DH_ID_base):ubuntu1804-ans29
	docker pull $(DH_ID_base):ubuntu1604-ans27
	docker pull $(DH_ID_base):ubuntu1604
	# docker pull $(DH_ID_base):ubuntu1404

# --------------------------------------------------------------------------
push-base: push-alpine-base push-ubuntu-base

push-alpine-base: check-env-base
	docker push $(DH_ID_base):alpine
	docker push $(DH_ID_base):alpineedge
	docker push $(DH_ID_base):alpineedge-${TAG_VERSION}
	docker push $(DH_ID_base):alpine311-ans29
	docker push $(DH_ID_base):alpine311-ans29-${TAG_VERSION}
	docker push $(DH_ID_base):alpine310-ans28
	docker push $(DH_ID_base):alpine310-ans28-${TAG_VERSION}
	docker push $(DH_ID_base):alpine39-ans27
	docker push $(DH_ID_base):alpine39-ans27-${TAG_VERSION}
	docker push $(DH_ID_base):alpine38-ans27
	docker push $(DH_ID_base):alpine38-ans27-${TAG_VERSION}
	docker push $(DH_ID_base):alpine38
	docker push $(DH_ID_base):alpine38-${TAG_VERSION}
	docker push $(DH_ID_base):alpine37
	docker push $(DH_ID_base):alpine37-${TAG_VERSION}

push-ubuntu-base: check-env-base
	docker push $(DH_ID_base):ubuntu
	docker push $(DH_ID_base):ubuntu1804-ans29
	docker push $(DH_ID_base):ubuntu1804-ans29-${TAG_VERSION}
	docker push $(DH_ID_base):ubuntu1604-ans27
	docker push $(DH_ID_base):ubuntu1604-ans27-${TAG_VERSION}
	docker push $(DH_ID_base):ubuntu1604
	docker push $(DH_ID_base):ubuntu1604-${TAG_VERSION}
	# docker push $(DH_ID_base):ubuntu1404
	# docker push $(DH_ID_base):ubuntu1404-${TAG_VERSION}

# --------------------------------------------------------------------------
shell-alpine-base: shell-alpine-baseedge

shell-alpine-base37:
	docker run -it --rm $(DH_ID_base):alpine37 bash

shell-alpine-base38:
	docker run -it --rm $(DH_ID_base):alpine38 bash

shell-alpine-base38-ans27:
	docker run -it --rm $(DH_ID_base):alpine38-ans27 bash

shell-alpine-base39-ans27:
	docker run -it --rm $(DH_ID_base):alpine39-ans27 bash

shell-alpine-base310-ans28:
	docker run -it --rm $(DH_ID_base):alpine310-ans28 bash

shell-alpine-base311-ans29:
	docker run -it --rm $(DH_ID_base):alpine311-ans29 bash

shell-alpine-baseedge:
	docker run -it --rm $(DH_ID_base):alpineedge bash

shell-ubuntu1604-base: shell-ubuntu-base


shell-ubuntu1804-ans29-base:
	docker run -it --rm $(DH_ID_base):ubuntu1804-ans29 bash

shell-ubuntu1604-ans27-base:
	docker run -it --rm $(DH_ID_base):ubuntu1604-ans27 bash

shell-ubuntu1604-base:
	docker run -it --rm $(DH_ID_base):ubuntu1604 bash

# shell-ubuntu1404-base:
# 	docker run -it --rm $(DH_ID_base):ubuntu1404 bash

# --------------------------------------------------------------------------
test-base:        \
	test-alpine-base     \
	test-ubuntu-base
test-alpine-base: test-alpine37-base test-alpine38-base test-alpine38-ans27-base test-alpine39-ans27-base test-alpine310-ans28-base test-alpine311-ans29-base test-alpineedge-base
test-ubuntu-base: test-ubuntu1604-base test-ubuntu1604-ans27-base test-ubuntu1804-ans29-base

test-alpineedge-base:
	docker run -it --rm $(DH_ID_base):alpineedge

test-alpine311-ans29-base:
	docker run -it --rm $(DH_ID_base):alpine311-ans29

test-alpine310-ans28-base:
	docker run -it --rm $(DH_ID_base):alpine310-ans28

test-alpine39-ans27-base:
	docker run -it --rm $(DH_ID_base):alpine39-ans27

test-alpine38-ans27-base:
	docker run -it --rm $(DH_ID_base):alpine38-ans27

test-alpine38-base:
	docker run -it --rm $(DH_ID_base):alpine38

test-alpine37-base:
	docker run -it --rm $(DH_ID_base):alpine37

test-ubuntu1804-ans29-base:
	docker run -it --rm $(DH_ID_base):ubuntu1804-ans29

test-ubuntu1604-ans27-base:
	docker run -it --rm $(DH_ID_base):ubuntu1604-ans27

test-ubuntu1604-base:
	docker run -it --rm $(DH_ID_base):ubuntu1604

# test-ubuntu1404-base:
# 	docker run -it --rm $(DH_ID_base):ubuntu1404
