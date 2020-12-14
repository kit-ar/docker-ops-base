# v3.0.0    2020-12-13     webmaster@kit-ar.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-base: build-base-ubuntu

build-base-ubuntu: build-base-ubuntu1804
build-base-ubuntu: build-base-ubuntu2004
build-base-ubuntu: build-base-ubuntu1804-ans210
build-base-ubuntu: build-base-ubuntu2004-ans210
# dockerfiles: 5

build-base-ubuntu1804:          							r--build-base-ubuntu1804
build-base-ubuntu2004:          							r--build-base-ubuntu2004
build-base-ubuntu1804-ans210:        build-base-ubuntu1804   r--build-base-ubuntu1804-ans210
build-base-ubuntu2004-ans210:        build-base-ubuntu2004   r--build-base-ubuntu2004-ans210
# images:      10

# --------------------------------------------------------------------------
pull-base: pull-base-ubuntu

pull-base-ubuntu: r--pull-base-ubuntu1804
pull-base-ubuntu: r--pull-base-ubuntu2004
pull-base-ubuntu: r--pull-base-ubuntu1804-ans210
pull-base-ubuntu: r--pull-base-ubuntu2004-ans210

# --------------------------------------------------------------------------
push-base: push-base-ubuntu

push-base-ubuntu: r--push-base-ubuntu1804
push-base-ubuntu: r--push-base-ubuntu2004
push-base-ubuntu: r--push-base-ubuntu1804-ans210
push-base-ubuntu: r--push-base-ubuntu2004-ans210

# --------------------------------------------------------------------------
shell-ubuntu:                     shell-base-ubuntu
shell-base-ubuntu:                shell-base-ubuntu1804
shell-base-ubuntu1804:            r--shell-base-ubuntu1804
shell-base-ubuntu2004:            r--shell-base-ubuntu2004
shell-base-ubuntu1804-ans210:      r--shell-base-ubuntu1804-ans210
shell-base-ubuntu2004-ans210:      r--shell-base-ubuntu2004-ans210

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-ubuntu:                     test-base-ubuntu
test-base-ubuntu:                test-base-ubuntu1804
test-base-ubuntu:                test-base-ubuntu2004
test-base-ubuntu:                test-base-ubuntu1804-ans210
test-base-ubuntu:                test-base-ubuntu2004-ans210

test-base-ubuntu1804:            r--test-base-ubuntu1804$(TEST_TAG)
test-base-ubuntu2004:            r--test-base-ubuntu2004$(TEST_TAG)
test-base-ubuntu1804-ans210:      r--test-base-ubuntu1804-ans210$(TEST_TAG)
test-base-ubuntu2004-ans210:      r--test-base-ubuntu2004-ans210$(TEST_TAG)

