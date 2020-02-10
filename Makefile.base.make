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
	build-alpine-base-311-ans27 \
	build-alpine-base-38-ans27 \
	build-alpine-base-34-ans27

	# build-alpine-base-310-ans28
	# build-alpine-base-39-ans28
	# build-alpine-base-38
	# build-alpine-base-37
	# build-alpine-base-34-ans22

build-alpine-base-edge:           r--build-alpine-base-edge
build-alpine-base-311-ans29-py38: r--build-alpine-base-311-ans29-py38
build-alpine-base-311-ans29:      r--build-alpine-base-311-ans29
build-alpine-base-311-ans27:      r--build-alpine-base-311-ans27
# build-alpine-base-310-ans28:      r--build-alpine-base-310-ans28
# build-alpine-base-39-ans28:       r--build-alpine-base-39-ans28
build-alpine-base-38-ans27:       r--build-alpine-base-38-ans27
# build-alpine-base-38:             r--build-alpine-base-38
# build-alpine-base-37:             r--build-alpine-base-37
build-alpine-base-34-ans27:       r--build-alpine-base-34-ans27
# build-alpine-base-34-ans22:       r--build-alpine-base-34-ans22

build-deb-base: \
	build-deb-base-10-ans29-py37

build-deb-base-10-ans29-py37:    r--build-deb-base-10-ans29-py37

build-ubuntu-base: \
	build-ubuntu-base-1804-ans29 \
	build-ubuntu-base-1804-ans27 \
	build-ubuntu-base-1604-ans27
	# build-ubuntu-base-1604-ans26
	# build-ubuntu-base-1404

build-ubuntu-base-1804-ans29:    r--build-ubuntu-base-1804-ans29
build-ubuntu-base-1804-ans27:    r--build-ubuntu-base-1804-ans27
build-ubuntu-base-1604-ans27:    r--build-ubuntu-base-1604-ans27
# build-ubuntu-base-1604-ans26:    r--build-ubuntu-base-1604-ans26
# build-ubuntu-base-1404:          r--build-ubuntu-base-1404

# --------------------------------------------------------------------------
pull-base: pull-alpine-base pull-deb-base pull-ubuntu-base

pull-alpine-base: check-env-base \
	r--pull-alpine-base-edge \
	r--pull-alpine-base-311-ans29-py38 \
	r--pull-alpine-base-311-ans29 \
	r--pull-alpine-base-311-ans27 \
	r--pull-alpine-base-38-ans27 \
	r--pull-alpine-base-34-ans27 \

	# docker pull $(DH_ID_base):alpine
	# r--pull-alpine-base-310-ans28
	# r--pull-alpine-base-39-ans28
	# r--pull-alpine-base-38
	# r--pull-alpine-base-37
	# r--pull-alpine-base-34-ans22

pull-deb-base:
	r--pull-deb-base-10-ans29-py37

pull-ubuntu-base:
	r--pull-ubuntu-base-1804-ans29
	r--pull-ubuntu-base-1804-ans27
	r--pull-ubuntu-base-1604-ans27
	# r--pull-ubuntu-base-1604-ans26
	# r--pull-ubuntu-base-1404

# --------------------------------------------------------------------------
push-base: push-alpine-base push-deb-base push-ubuntu-base

push-alpine-base: check-env-base \
	r--push-alpine-base-edge \
	r--push-alpine-base-311-ans29-py38 \
	r--push-alpine-base-311-ans29 \
	r--push-alpine-base-311-ans27 \
	r--push-alpine-base-38-ans27 \
	r--push-alpine-base-34-ans27 \

	# r--push-alpine-base-310-ans28
	# r--push-alpine-base-39-ans28
	# r--push-alpine-base-38
	# r--push-alpine-base-37
	# r--push-alpine-base-34-ans22

push-deb-base: check-env-base
	r--push-deb-base-10-ans29-py37

push-ubuntu-base: check-env-base
	r--push-ubuntu-base-1804-ans29
	r--push-ubuntu-base-1804-ans27
	r--push-ubuntu-base-1604-ans27
	# r--push-ubuntu-base-1604-ans26
	# r--push-ubuntu-base-1404

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

shell-deb:                        shell-deb-base-10-ans29-py37
shell-deb-base-10-ans29-py37:     r--shell-deb-base-10-ans29-py37

shell-ubuntu:                     shell-ubuntu-base
shell-ubuntu-base:                shell-ubuntu1804-base-ans29
shell-ubuntu1804-base-ans29:      r--shell-ubuntu-base-1804-ans29
shell-ubuntu1804-base-ans27:      r--shell-ubuntu-base-1804-ans27
shell-ubuntu1604-base-ans27:      r--shell-ubuntu-base-1604-ans27
# shell-ubuntu1604-base-ans26:      r--shell-ubuntu-base-1604-ans26
# shell-ubuntu1404-base:           r--shell-ubuntu-base-1404

# --------------------------------------------------------------------------
TEST_TAG=-181112c

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

# --------------------------------------------------------------------------
test-deb:                        test-deb-base
test-deb-base:                   test-deb-base-10-ans29-py37
test-deb-base-10-ans29-py37:     r--test-deb-base-10-ans29-py37$(TEST_TAG)

# --------------------------------------------------------------------------
test-ubuntu:                     test-ubuntu-base
test-ubuntu-base:                test-ubuntu1804-base-ans29
test-ubuntu-base:                test-ubuntu1804-base-ans27
test-ubuntu-base:                test-ubuntu1604-base-ans27
# test-ubuntu-base:                test-ubuntu1604-base-ans26
# test-ubuntu-base:                test-ubuntu1404-base

test-ubuntu1804-base-ans29:      r--test-ubuntu-base-1804-ans29$(TEST_TAG)
test-ubuntu1804-base-ans27:      r--test-ubuntu-base-1804-ans27$(TEST_TAG)
test-ubuntu1604-base-ans27:      r--test-ubuntu-base-1604-ans27$(TEST_TAG)
# test-ubuntu1604-base-ans26:      r--test-ubuntu-base-1604-ans26$(TEST_TAG)
# test-ubuntu1404-base:            r--test-ubuntu-base-1404$(TEST_TAG)

