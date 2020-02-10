# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

DH_ID_base=ez123/ops-base

# --------------------------------------------------------------------------
check-env-base:
	test -n "$(TAG_VERSION)"   # TAG_VERSION.base
	test -n "$(TIMESTAMP)"     # TIMESTAMP.base

# --------------------------------------------------------------------------
build-base: build-alpine-base build-ubuntu-base build-deb-base

build-alpine-base: \
	build-alpine-base-edge \
	build-alpine-base-311-ans29-py38 \
	build-alpine-base-311-ans29 \
	build-alpine-base-310-ans28 \
	build-alpine-base-39-ans27 \
	build-alpine-base-38-ans27 \
	build-alpine-base-38 \
	build-alpine-base-37

build-alpine-base-edge:           r--build-alpine-base-edge
build-alpine-base-311-ans29-py38: r--build-alpine-base-311-ans29-py38
build-alpine-base-311-ans29:      r--build-alpine-base-311-ans29
build-alpine-base-310-ans28:      r--build-alpine-base-310-ans28
build-alpine-base-39-ans27:       r--build-alpine-base-39-ans27
build-alpine-base-38-ans27:       r--build-alpine-base-38-ans27
build-alpine-base-38:             r--build-alpine-base-38
build-alpine-base-37:             r--build-alpine-base-37

build-deb-base: \
	build-deb-base-10-ans29-py37

build-deb-base-10-ans29-py37:    r--build-deb-base-10-ans29-py37

build-ubuntu-base: \
	build-ubuntu-base-1804-ans29 \
	build-ubuntu-base-1604-ans27 \
	build-ubuntu-base-1604
	# build-ubuntu-base-1404

build-ubuntu-base-1804-ans29:    r--build-ubuntu-base-1804-ans29
build-ubuntu-base-1604-ans27:    r--build-ubuntu-base-1604-ans27
build-ubuntu-base-1604:          r--build-ubuntu-base-1604
# build-ubuntu-base-1404:          r--build-ubuntu-base-1404

# --------------------------------------------------------------------------
pull-base: pull-alpine-base pull-deb-base pull-ubuntu-base

pull-alpine-base: check-env-base
	# docker pull $(DH_ID_base):alpine
	docker pull $(DH_ID_base):alpineedge
	docker pull $(DH_ID_base):alpine311-ans29-py38
	docker pull $(DH_ID_base):alpine311-ans29
	docker pull $(DH_ID_base):alpine310-ans28
	docker pull $(DH_ID_base):alpine39-ans27
	docker pull $(DH_ID_base):alpine38-ans27
	docker pull $(DH_ID_base):alpine38
	docker pull $(DH_ID_base):alpine37

pull-deb-base:
	docker pull $(DH_ID_base):deb10-ans29

pull-ubuntu-base:
	# docker pull $(DH_ID_base):ubuntu
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

shell-alpine-baseedge:           r--shell-alpine-basealpineedge
shell-alpine-base311-ans29-py38: r--shell-alpine-alpine311-ans29-py38
shell-alpine-base311-ans29:      r--shell-alpine-alpine311-ans29
shell-alpine-base311-ans29:      r--shell-alpine-base311-ans29
shell-alpine-base310-ans28:      r--shell-alpine-base310-ans28
shell-alpine-base39-ans27:       r--shell-alpine-base39-ans27
shell-alpine-base38-ans27:       r--shell-alpine-base38-ans27
shell-alpine-base38:             r--shell-alpine-base38
shell-alpine-base37:             r--shell-alpine-base37

shell-deb10e: shell-deb10-ans29-base

shell-deb10-ans29-base:     r--shell-deb-base10-ans29


shell-ubuntu-base: shell-ubuntu1804-ans29-base

shell-ubuntu1804-ans29-base:     r--shell-ubuntu-base1804-ans29
shell-ubuntu1604-ans27-base:     r--shell-ubuntu-base1604-ans27
shell-ubuntu1604-base:           r--shell-ubuntu-base1604
shell-ubuntu1404-base:           r--shell-ubuntu-base1404
# shell-ubuntu1404-base:           r--shell-ubuntu-base1404

