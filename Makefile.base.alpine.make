# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-base: build-alpine-base

build-alpine-base: build-alpine-base-edge
build-alpine-base: build-alpine-base-311-ans29-py38
build-alpine-base: build-alpine-base-311-ans29
build-alpine-base: build-alpine-base-311-ans27
#build-alpine-base: build-alpine-base-310-ans28
#build-alpine-base: build-alpine-base-39-ans28
build-alpine-base: build-alpine-base-38-ans27
#build-alpine-base: build-alpine-base-38
#build-alpine-base: build-alpine-base-37
build-alpine-base: build-alpine-base-34-ans27
#build-alpine-base: build-alpine-base-34-ans22


build-alpine-base-edge:           r--build-alpine-base-edge
build-alpine-base-311-ans29-py38: r--build-alpine-base-311-ans29-py38
build-alpine-base-311-ans29:      r--build-alpine-base-311-ans29
	docker tag ez123/ops-base:alpine311-ans29 ez123/ops-base:alpine311
build-alpine-base-311-ans27:      r--build-alpine-base-311-ans27
# build-alpine-base-310-ans28:      r--build-alpine-base-310-ans28
# build-alpine-base-39-ans28:       r--build-alpine-base-39-ans28
build-alpine-base-38-ans27:       r--build-alpine-base-38-ans27
	docker tag ez123/ops-base:alpine38-ans27 ez123/ops-base:alpine38
# build-alpine-base-38:             r--build-alpine-base-38
# build-alpine-base-37:             r--build-alpine-base-37
build-alpine-base-34-ans27:       r--build-alpine-base-34-ans27
	docker tag ez123/ops-base:alpine34-ans27 ez123/ops-base:alpine34
# build-alpine-base-34-ans22:       r--build-alpine-base-34-ans22

# --------------------------------------------------------------------------
pull-base: pull-alpine-base

pull-alpine-base: check-env-base r--pull-alpine-base-edge
pull-alpine-base: check-env-base r--pull-alpine-base-311-ans29-py38
pull-alpine-base: check-env-base r--pull-alpine-base-311-ans29
pull-alpine-base: check-env-base r--pull-alpine-base-311
pull-alpine-base: check-env-base r--pull-alpine-base-311-ans27
# pull-alpine-base: check-env-base r--pull-alpine-base-310-ans28
# pull-alpine-base: check-env-base r--pull-alpine-base-39-ans28
pull-alpine-base: check-env-base r--pull-alpine-base-38-ans27
pull-alpine-base: check-env-base r--pull-alpine-base-38
# pull-alpine-base: check-env-base r--pull-alpine-base-38
# pull-alpine-base: check-env-base r--pull-alpine-base-37
pull-alpine-base: check-env-base r--pull-alpine-base-34-ans27
pull-alpine-base: check-env-base r--pull-alpine-base-34
# pull-alpine-base: check-env-base r--pull-alpine-base-34-ans22

# --------------------------------------------------------------------------
push-base: push-alpine-base

push-alpine-base: check-env-base r--push-alpine-base-edge
push-alpine-base: check-env-base r--push-alpine-base-311-ans29-py38
push-alpine-base: check-env-base r--push-alpine-base-311-ans29
push-alpine-base: check-env-base r--push-alpine-base-311
push-alpine-base: check-env-base r--push-alpine-base-311-ans27
# push-alpine-base: check-env-base r--push-alpine-base-310-ans28
# push-alpine-base: check-env-base r--push-alpine-base-39-ans28
push-alpine-base: check-env-base r--push-alpine-base-38-ans27
push-alpine-base: check-env-base r--push-alpine-base-38
# push-alpine-base: check-env-base r--push-alpine-base-38
# push-alpine-base: check-env-base r--push-alpine-base-37
push-alpine-base: check-env-base r--push-alpine-base-34-ans27
push-alpine-base: check-env-base r--push-alpine-base-34
# push-alpine-base: check-env-base r--push-alpine-base-34-ans22

# --------------------------------------------------------------------------
shell-alpine-base: shell-alpine-baseedge

shell-alpine-base-edge:           r--shell-alpine-base-edge
shell-alpine-base-311-ans29-py38: r--shell-alpine-base-311-ans29-py38
shell-alpine-base-311-ans29:      r--shell-alpine-base-311-ans29
shell-alpine-base-311-ans27:      r--shell-alpine-base-311-ans27
# shell-alpine-base-310-ans28:      r--shell-alpine-base-310-ans28
# shell-alpine-base-39-ans28:       r--shell-alpine-base-39-ans28
shell-alpine-base-38-ans27:       r--shell-alpine-base-38-ans27
# shell-alpine-base-38:             r--shell-alpine-base-38
# shell-alpine-base-37:             r--shell-alpine-base-37
shell-alpine-base-34-ans27:       r--shell-alpine-base-34-ans27
# shell-alpine-base-34-ans22:       r--shell-alpine-base-34-ans22

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-alpine:             test-alpine-base
test-alpine-base:        test-alpine-base-edge
test-alpine-base:        test-alpine-base-311-ans29-py38
test-alpine-base:        test-alpine-base-311-ans29
test-alpine-base:        test-alpine-base-311-ans27
# test-alpine-base:        test-alpine-base-310-ans28
# test-alpine-base:        test-alpine-base-39-ans28
test-alpine-base:        test-alpine-base-38-ans27
# test-alpine-base:        test-alpine-base-38
# test-alpine-base:        test-alpine-base-37
test-alpine-base:        test-alpine-base-34-ans27
# test-alpine-base-ans22:  test-alpine-base-34-ans22

test-alpine-base-edge:           r--test-alpine-base-edge$(TEST_TAG)
test-alpine-base-311-ans29-py38: r--test-alpine-base-311-ans29-py38$(TEST_TAG)
test-alpine-base-311-ans29:      r--test-alpine-base-311-ans29$(TEST_TAG)
test-alpine-base-311-ans27:      r--test-alpine-base-311-ans27$(TEST_TAG)
# test-alpine-base-310-ans28:      r--test-alpine-base-310-ans28$(TEST_TAG)
# test-alpine-base-39-ans28:       r--test-alpine-base-39-ans28$(TEST_TAG)
test-alpine-base-38-ans27:       r--test-alpine-base-38-ans27$(TEST_TAG)
# test-alpine-base-38:             r--test-alpine-base-38$(TEST_TAG)
# test-alpine-base-37:             r--test-alpine-base-37$(TEST_TAG)
test-alpine-base-34-ans27:       r--test-alpine-base-34-ans27$(TEST_TAG)
# test-alpine-base-34-ans22:       r--test-alpine-base-34-ans22$(TEST_TAG)
