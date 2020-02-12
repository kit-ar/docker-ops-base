# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e
# --------------------------------------------------------------------------
build-base: build-base-deb

build-base-deb: build-base-deb10-ans29-py37
# dockerfiles: 1

build-base-deb10-ans29-py37:    	r--build-base-deb10-ans29-py37
						docker tag ${DH_ID_base}:deb10-ans29-py37    ${DH_ID_base}:deb10-ans29
						docker tag ${DH_ID_base}:deb10-ans29-py37    ${DH_ID_base}:deb10-ans29-${TAG_VERSION}
# images:      2

# --------------------------------------------------------------------------
pull-base: pull-base-deb

pull-base-deb: r--pull-base-deb10-ans29-py37
pull-base-deb: r--pull-base-deb10-ans29

# --------------------------------------------------------------------------
push-base: push-base-deb

push-base-deb: r--push-base-deb10-ans29-py37
push-base-deb: r--push-base-deb10-ans29

# --------------------------------------------------------------------------
shell-deb:                        shell-base-deb10-ans29-py37

shell-base-deb10-ans29-py37:     r--shell-base-deb10-ans29-py37
shell-base-deb10-ans29-py37:     r--shell-base-deb10-ans29

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-deb:                       test-base-deb
test-base-deb:                  test-base-deb10-ans29-py37
test-base-deb10-ans29-py37:     r--test-base-deb10-ans29-py37$(TEST_TAG)
test-base-deb10-ans29:          r--test-base-deb10-ans29$(TEST_TAG)
