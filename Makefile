# v3.0.0    2020-12-12     webmaster@kit-ar.com
TAG_VERSION=201212a

DH_ID_base=kitaruk/ops-base

# .ONESHELL:
# SHELL = bash
.SHELLFLAGS = -e

THIS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
TIMESTAMP=$(shell date -u +"%Y%m%d_%H%M%S%Z")

BUILD_CACHE=
# # BUILD_CACHE=--pull
# # BUILD_CACHE=--no-cache --force-rm
# BUILD_CACHE=--pull --no-cache --force-rm

all:
default:

include ./Makefile.rules.make
include ./Makefile.base._.make

include ./Makefile.base.alpine.make
include ./Makefile.base.ubuntu.make
# include ./Makefile.base.deb.make

# --------------------------------------------------------------------------
build: build-alpine
build: build-ubuntu
# build: build-deb

#build-alpine: build-base-alpine build-alpine-provis
build-alpine: build-base-alpine
build-ubuntu: build-base-ubuntu
# # build-deb:    build-base-deb

build-latest: build-base-alpine311-ans209
build-latest: build-base-ubuntu1804-ans210
# build-latest: build-base-deb10-ans209-py37

pull: pull-alpine
pull: pull-ubuntu
# pull: pull-deb
pull-alpine: pull-base-alpine
pull-ubuntu: pull-base-ubuntu
# # pull-deb:    pull-base-deb

push: push-alpine
push: push-ubuntu
# push: push-deb
push-alpine: push-base-alpine
push-ubuntu: push-base-ubuntu
# # push-deb:    push-base-deb

test: test-alpine
test: test-ubuntu
# test: test-deb
test-alpine: test-base-alpine
test-ubuntu: test-base-ubuntu
# # test-deb:    test-base-deb


# --------------------------------------------------------------------------
clean-junk:
	docker rm -v     `docker ps -aq -f status=exited`      || true
	docker rmi       `docker images -q -f dangling=true`   || true
	#docker volume rm `docker volume ls -qf dangling=true | grep -v "ansible_" | grep -v "^infra" |grep -v "state" |grep -v "persist" |grep -v "vol_"`  || true

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
