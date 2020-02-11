# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-base: build-ubuntu-base

build-ubuntu-base: build-ubuntu-base-1804-ans29
	docker tag ez123/ops-base:ubuntu1804-ans29 ez123/ops-base:ubuntu1804
build-ubuntu-base: build-ubuntu-base-1804-ans27
build-ubuntu-base: build-ubuntu-base-1604-ans27
# build-ubuntu-base: build-ubuntu-base-1604-ans26
# build-ubuntu-base: build-ubuntu-base-1404

build-ubuntu-base-1804-ans29:    r--build-ubuntu-base-1804-ans29
build-ubuntu-base-1804-ans27:    r--build-ubuntu-base-1804-ans27
build-ubuntu-base-1604-ans27:    r--build-ubuntu-base-1604-ans27
# build-ubuntu-base-1604-ans26:    r--build-ubuntu-base-1604-ans26
# build-ubuntu-base-1404:          r--build-ubuntu-base-1404

# --------------------------------------------------------------------------
pull-base: pull-ubuntu-base

pull-ubuntu-base: check-env-base r--pull-ubuntu-base-1804-ans29
pull-ubuntu-base: check-env-base r--pull-ubuntu-base-1804
pull-ubuntu-base: check-env-base r--pull-ubuntu-base-1804-ans27
pull-ubuntu-base: check-env-base r--pull-ubuntu-base-1604-ans27
# pull-ubuntu-base: check-env-base r--pull-ubuntu-base-1604-ans26
# pull-ubuntu-base: check-env-base r--pull-ubuntu-base-1404

# --------------------------------------------------------------------------
push-base: push-ubuntu-base

push-ubuntu-base: check-env-base r--push-ubuntu-base-1804-ans29
push-ubuntu-base: check-env-base r--push-ubuntu-base-1804
push-ubuntu-base: check-env-base r--push-ubuntu-base-1804-ans27
push-ubuntu-base: check-env-base r--push-ubuntu-base-1604-ans27
# push-ubuntu-base: check-env-base r--push-ubuntu-base-1604-ans26
# push-ubuntu-base: check-env-base r--push-ubuntu-base-1404

# --------------------------------------------------------------------------
shell-ubuntu:                     shell-ubuntu-base
shell-ubuntu-base:                shell-ubuntu-base-1804-ans29
shell-ubuntu-base-1804-ans29:      r--shell-ubuntu-base-1804-ans29
shell-ubuntu-base-1804-ans27:      r--shell-ubuntu-base-1804-ans27
shell-ubuntu-base-1604-ans27:      r--shell-ubuntu-base-1604-ans27
# shell-ubuntu-base-1604-ans26:      r--shell-ubuntu-base-1604-ans26
# shell-ubuntu1404-base:           r--shell-ubuntu-base-1404

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-ubuntu:                     test-ubuntu-base
test-ubuntu-base:                test-ubuntu-base-1804-ans29
test-ubuntu-base:                test-ubuntu-base-1804-ans27
test-ubuntu-base:                test-ubuntu-base-1604-ans27
# test-ubuntu-base:                test-ubuntu-base-1604-ans26
# test-ubuntu-base:                test-ubuntu1404-base

test-ubuntu-base-1804-ans29:      r--test-ubuntu-base-1804-ans29$(TEST_TAG)
test-ubuntu-base-1804-ans27:      r--test-ubuntu-base-1804-ans27$(TEST_TAG)
test-ubuntu-base-1604-ans27:      r--test-ubuntu-base-1604-ans27$(TEST_TAG)
# test-ubuntu-base-1604-ans26:      r--test-ubuntu-base-1604-ans26$(TEST_TAG)
# test-ubuntu1404-base:            r--test-ubuntu-base-1404$(TEST_TAG)

