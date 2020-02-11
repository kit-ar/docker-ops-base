# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-base: build-base-ubuntu

build-base-ubuntu: build-base-ubuntu1804-ans29
	docker tag ez123/ops-base:ubuntu1804-ans29 ez123/ops-base:ubuntu1804
build-base-ubuntu: build-base-ubuntu1804-ans27
build-base-ubuntu: build-base-ubuntu1604-ans27
	docker tag ez123/ops-base:ubuntu1604-ans29 ez123/ops-base:ubuntu1804

build-base-ubuntu1804-ans29:    r--build-base-ubuntu1804-ans29
build-base-ubuntu1804-ans27:    r--build-base-ubuntu1804-ans27
build-base-ubuntu1604-ans27:    r--build-base-ubuntu1604-ans27

# --------------------------------------------------------------------------
pull-base: pull-base-ubuntu

pull-base-ubuntu: check-env-base r--pull-base-ubuntu1804-ans29
pull-base-ubuntu: check-env-base r--pull-base-ubuntu1804
pull-base-ubuntu: check-env-base r--pull-base-ubuntu1804-ans27
pull-base-ubuntu: check-env-base r--pull-base-ubuntu1604-ans27

# --------------------------------------------------------------------------
push-base: push-base-ubuntu

push-base-ubuntu: check-env-base r--push-base-ubuntu1804-ans29
push-base-ubuntu: check-env-base r--push-base-ubuntu1804
push-base-ubuntu: check-env-base r--push-base-ubuntu1804-ans27
push-base-ubuntu: check-env-base r--push-base-ubuntu1604-ans27

# --------------------------------------------------------------------------
shell-ubuntu:                     shell-base-ubuntu
shell-base-ubuntu:                shell-base-ubuntu1804-ans29
shell-base-ubuntu1804-ans29:      r--shell-base-ubuntu1804-ans29
shell-base-ubuntu1804-ans27:      r--shell-base-ubuntu1804-ans27
shell-base-ubuntu1604-ans27:      r--shell-base-ubuntu1604-ans27

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-ubuntu:                     test-base-ubuntu
test-base-ubuntu:                test-base-ubuntu1804-ans29
test-base-ubuntu:                test-base-ubuntu1804-ans27
test-base-ubuntu:                test-base-ubuntu1604-ans27

test-base-ubuntu1804-ans29:      r--test-base-ubuntu1804-ans29$(TEST_TAG)
test-base-ubuntu1804-ans27:      r--test-base-ubuntu1804-ans27$(TEST_TAG)
test-base-ubuntu1604-ans27:      r--test-base-ubuntu1604-ans27$(TEST_TAG)

