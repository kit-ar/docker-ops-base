# v2.4.1    2020-02-07     webmaster@highskillz.com
TAG_VERSION=200210e

# .ONESHELL:
.SHELLFLAGS = -e

THIS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
TIMESTAMP=$(shell date -u +"%Y%m%d_%H%M%S%Z")

BUILD_CACHE=
#BUILD_CACHE=--no-cache --force-rm

default: build

include ./Makefile.rules.make
include ./Makefile.base.make

# --------------------------------------------------------------------------
build: all

all: build-alpine build-ubuntu build-ubdebuntu

#build-alpine: build-alpine-base build-alpine-provis
build-alpine: build-alpine-base
build-ubuntu: build-ubuntu-base
build-deb:    build-deb-base

pull: pull-alpine pull-ubuntu pull-deb
pull-alpine: pull-alpine-base
pull-ubuntu: pull-ubuntu-base
pull-deb:    pull-deb-base

push: push-alpine push-ubuntu
push-alpine: push-alpine-base
push-ubuntu: push-ubuntu-base

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
