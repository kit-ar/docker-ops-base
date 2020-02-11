# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e
# --------------------------------------------------------------------------
build-base: build-deb-base

build-deb-base: build-deb-base-10-ans29-py37

build-deb-base-10-ans29-py37:    r--build-deb-base-10-ans29-py37
	docker tag ez123/ops-base:deb10-ans29-py37 ez123/ops-base:deb10

# --------------------------------------------------------------------------
pull-base: pull-deb-base

pull-deb-base: check-env-base r--pull-deb-base-10-ans29-py37

# --------------------------------------------------------------------------
push-base: push-deb-base

push-deb-base: check-env-base r--push-deb-base-10-ans29-py37

# --------------------------------------------------------------------------
shell-deb:                        shell-deb-base-10-ans29-py37

shell-deb-base-10-ans29-py37:     r--shell-deb-base-10-ans29-py37

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------# --------------------------------------------------------------------------
test-deb:                        test-deb-base
test-deb-base:                   test-deb-base-10-ans29-py37
test-deb-base-10-ans29-py37:     r--test-deb-base-10-ans29-py37$(TEST_TAG)
