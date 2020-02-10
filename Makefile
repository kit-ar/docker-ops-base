# v2.4.1    2020-02-07     webmaster@highskillz.com
TAG_VERSION=200210k

# .ONESHELL:
.SHELLFLAGS = -e

THIS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
TIMESTAMP=$(shell date -u +"%Y%m%d_%H%M%S%Z")

BUILD_CACHE=
#BUILD_CACHE=--no-cache --force-rm

all:

include ./Makefile.rules.make
include ./Makefile.base.make

# --------------------------------------------------------------------------
build: build-alpine
build: build-ubuntu
build: build-deb

#build-alpine: build-alpine-base build-alpine-provis
build-alpine: build-alpine-base
build-ubuntu: build-ubuntu-base
build-deb:    build-deb-base

build-latest: build-alpine-base-311-ans29
build-latest: build-ubuntu-base-1804-ans29
build-latest: build-deb-base-10-ans29-py37

pull: pull-alpine
pull: pull-ubuntu
pull: pull-deb
pull-alpine: pull-alpine-base
pull-ubuntu: pull-ubuntu-base
pull-deb:    pull-deb-base

push: push-alpine
push: push-ubuntu
push: push-deb
push-alpine: push-alpine-base
push-ubuntu: push-ubuntu-base
push-deb:    push-deb-base

# --------------------------------------------------------------------------
# clean-images:
# 	docker rmi $(DH_ID_base):alpine  $(DH_ID):alpine   || true
# 	docker rmi $(DH_ID_base):ubuntu  $(DH_ID):ubuntu   || true
#
# d-rmi: clean-images clean-junk

# --------------------------------------------------------------------------
list:
	docker images
	docker volume ls
	docker ps -a

# --------------------------------------------------------------------------
