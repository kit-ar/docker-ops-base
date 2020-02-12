# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-base: build-base-ubuntu

build-base-ubuntu: build-base-ubuntu1804-ans29
build-base-ubuntu: build-base-ubuntu1804-ans27
build-base-ubuntu: build-base-ubuntu1604-ans27
# dockerfiles: 3

build-base-ubuntu1804-ans29:    r--build-base-ubuntu1804-ans29
					docker tag ${DH_ID_base}:ubuntu1804-ans29    ${DH_ID_base}:ubuntu1804
					docker tag ${DH_ID_base}:ubuntu1804-ans29    ${DH_ID_base}:ubuntu1804-${TAG_VERSION}
build-base-ubuntu1804-ans27:    r--build-base-ubuntu1804-ans27
build-base-ubuntu1604-ans27:    r--build-base-ubuntu1604-ans27
					docker tag ${DH_ID_base}:ubuntu1604-ans27    ${DH_ID_base}:ubuntu1604
					docker tag ${DH_ID_base}:ubuntu1604-ans27    ${DH_ID_base}:ubuntu1604-${TAG_VERSION}
# images:      5

# --------------------------------------------------------------------------
pull-base: pull-base-ubuntu

pull-base-ubuntu: r--pull-base-ubuntu1804-ans29
pull-base-ubuntu: r--pull-base-ubuntu1804
pull-base-ubuntu: r--pull-base-ubuntu1804-ans27
pull-base-ubuntu: r--pull-base-ubuntu1604-ans27
pull-base-ubuntu: r--pull-base-ubuntu1604

# --------------------------------------------------------------------------
push-base: push-base-ubuntu

push-base-ubuntu: r--push-base-ubuntu1804-ans29
push-base-ubuntu: r--push-base-ubuntu1804
push-base-ubuntu: r--push-base-ubuntu1804-ans27
push-base-ubuntu: r--push-base-ubuntu1604-ans27
push-base-ubuntu: r--push-base-ubuntu1604

# --------------------------------------------------------------------------
shell-ubuntu:                     shell-base-ubuntu
shell-base-ubuntu:                shell-base-ubuntu1804
shell-base-ubuntu1804-ans29:      r--shell-base-ubuntu1804-ans29
shell-base-ubuntu1804:            r--shell-base-ubuntu1804
shell-base-ubuntu1804-ans27:      r--shell-base-ubuntu1804-ans27
shell-base-ubuntu1604-ans27:      r--shell-base-ubuntu1604-ans27
shell-base-ubuntu1604:            r--shell-base-ubuntu1604

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-ubuntu:                     test-base-ubuntu
test-base-ubuntu:                test-base-ubuntu1804-ans29
test-base-ubuntu:                test-base-ubuntu1804
test-base-ubuntu:                test-base-ubuntu1804-ans27
test-base-ubuntu:                test-base-ubuntu1604-ans27
test-base-ubuntu:                test-base-ubuntu1604

test-base-ubuntu1804-ans29:      r--test-base-ubuntu1804-ans29$(TEST_TAG)
test-base-ubuntu1804:            r--test-base-ubuntu1804$(TEST_TAG)
test-base-ubuntu1804-ans27:      r--test-base-ubuntu1804-ans27$(TEST_TAG)
test-base-ubuntu1604-ans27:      r--test-base-ubuntu1604-ans27$(TEST_TAG)
test-base-ubuntu1604:            r--test-base-ubuntu1604$(TEST_TAG)

