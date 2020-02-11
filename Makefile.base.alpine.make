# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-base: build-base-alpine

build-base-alpine: build-base-alpineedge
build-base-alpine: build-base-alpine311-ans29-py38
build-base-alpine: build-base-alpine311-ans29
build-base-alpine: build-base-alpine311-ans27
build-base-alpine: build-base-alpine38-ans27
build-base-alpine: build-base-alpine34-ans27


build-base-alpineedge:           r--build-base-alpineedge
build-base-alpine311-ans29-py38: r--build-base-alpine311-ans29-py38
build-base-alpine311-ans29:      r--build-base-alpine311-ans29
	docker tag ez123/ops-base:alpine311-ans29 ez123/ops-base:alpine311
build-base-alpine311-ans27:      r--build-base-alpine311-ans27
build-base-alpine38-ans27:       r--build-base-alpine38-ans27
	docker tag ez123/ops-base:alpine38-ans27 ez123/ops-base:alpine38
build-base-alpine34-ans27:       r--build-base-alpine34-ans27
	docker tag ez123/ops-base:alpine34-ans27 ez123/ops-base:alpine34

# --------------------------------------------------------------------------
pull-base: pull-base-alpine

pull-base-alpine: check-env-base r--pull-base-alpine-edge
pull-base-alpine: check-env-base r--pull-base-alpine-311-ans29-py38
pull-base-alpine: check-env-base r--pull-base-alpine-311-ans29
pull-base-alpine: check-env-base r--pull-base-alpine-311
pull-base-alpine: check-env-base r--pull-base-alpine-311-ans27
pull-base-alpine: check-env-base r--pull-base-alpine-38-ans27
pull-base-alpine: check-env-base r--pull-base-alpine-38
pull-base-alpine: check-env-base r--pull-base-alpine-34-ans27
pull-base-alpine: check-env-base r--pull-base-alpine-34

# --------------------------------------------------------------------------
push-base: push-base-alpine

push-base-alpine: check-env-base r--push-base-alpine-edge
push-base-alpine: check-env-base r--push-base-alpine-311-ans29-py38
push-base-alpine: check-env-base r--push-base-alpine-311-ans29
push-base-alpine: check-env-base r--push-base-alpine-311
push-base-alpine: check-env-base r--push-base-alpine-311-ans27
push-base-alpine: check-env-base r--push-base-alpine-38-ans27
push-base-alpine: check-env-base r--push-base-alpine-38
push-base-alpine: check-env-base r--push-base-alpine-34-ans27
push-base-alpine: check-env-base r--push-base-alpine-34

# --------------------------------------------------------------------------
shell-base-alpine: shell-base-alpineedge

shell-base-alpine-edge:           r--shell-base-alpine-edge
shell-base-alpine-311-ans29-py38: r--shell-base-alpine-311-ans29-py38
shell-base-alpine-311-ans29:      r--shell-base-alpine-311-ans29
shell-base-alpine-311-ans27:      r--shell-base-alpine-311-ans27
shell-base-alpine-38-ans27:       r--shell-base-alpine-38-ans27
shell-base-alpine-34-ans27:       r--shell-base-alpine-34-ans27

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-alpine:             test-base-alpine
test-base-alpine:        test-base-alpine-edge
test-base-alpine:        test-base-alpine-311-ans29-py38
test-base-alpine:        test-base-alpine-311-ans29
test-base-alpine:        test-base-alpine-311-ans27
test-base-alpine:        test-base-alpine-38-ans27
test-base-alpine:        test-base-alpine-34-ans27

test-base-alpine-edge:           r--test-base-alpine-edge$(TEST_TAG)
test-base-alpine-311-ans29-py38: r--test-base-alpine-311-ans29-py38$(TEST_TAG)
test-base-alpine-311-ans29:      r--test-base-alpine-311-ans29$(TEST_TAG)
test-base-alpine-311-ans27:      r--test-base-alpine-311-ans27$(TEST_TAG)
test-base-alpine-38-ans27:       r--test-base-alpine-38-ans27$(TEST_TAG)
test-base-alpine-34-ans27:       r--test-base-alpine-34-ans27$(TEST_TAG)
