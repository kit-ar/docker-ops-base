# v3.0.0    2020-12-13     webmaster@kit-ar.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-all-alpine: build-all-alpineedge
build-all-alpine: build-all-alpine312
build-all-alpine: build-all-alpine311

build-all-alpineedge: 	build-base-alpineedge
build-all-alpine312: 	build-base-alpine312
build-all-alpine311: 	build-base-alpine311

build-all-alpineedge: 	build-base-alpineedge-ans
build-all-alpineedge: 	build-base-alpineedge-ansb
build-all-alpine312:	build-base-alpine312-ansb210
build-all-alpine312:	build-base-alpine312-ans210
# build-all-alpine312:	build-base-alpine312-ans209
build-all-alpine311: 	build-base-alpine311-ans209

# --------------------------------------------------------------------------
build-base: build-base-alpine

build-base-alpine: build-base-alpineedge
build-base-alpine: build-base-alpine312
build-base-alpine: build-base-alpine311

build-base-alpine: build-base-alpineedge-ansb
build-base-alpine: build-base-alpine312-ansb210
build-base-alpine: build-base-alpine312-ans210
# build-base-alpine: build-base-alpine312-ans209
build-base-alpine: build-base-alpine311-ans209

build-base-alpineedge:                                     r--build-base-alpineedge
build-base-alpine312:                                      r--build-base-alpine312
build-base-alpine311:                                      r--build-base-alpine311

build-base-alpineedge-ans:          build-base-alpineedge  r--build-base-alpineedge-ans
build-base-alpineedge-ansb:          build-base-alpineedge  r--build-base-alpineedge-ansb
build-base-alpine312-ansb210:        build-base-alpine312   r--build-base-alpine312-ansb210
build-base-alpine312-ans210:         build-base-alpine312   r--build-base-alpine312-ans210
# # build-base-alpine312-ans209:         build-base-alpine312   r--build-base-alpine312-ans209
build-base-alpine311-ans209:         build-base-alpine311   r--build-base-alpine311-ans209

# --------------------------------------------------------------------------
pull-base: pull-base-alpine

pull-base-alpine: pull-base-alpineedge
pull-base-alpine: pull-base-alpine312
pull-base-alpine: pull-base-alpine311

pull-base-alpineedge: r--pull-base-alpineedge
pull-base-alpine312:  r--pull-base-alpine312
pull-base-alpine311:  r--pull-base-alpine311

pull-base-alpineedge: r--pull-base-alpineedge-ans
pull-base-alpineedge: r--pull-base-alpineedge-ansb
pull-base-alpine312:  r--pull-base-alpine312-ansb210
pull-base-alpine312:  r--pull-base-alpine312-ans210
# pull-base-alpine312:  r--pull-base-alpine312-ans209
pull-base-alpine311:  r--pull-base-alpine311-ans209

# --------------------------------------------------------------------------
push-base: push-base-alpine

push-base-alpine: push-base-alpineedge
push-base-alpine: push-base-alpine312
push-base-alpine: push-base-alpine311

push-base-alpineedge: r--push-base-alpineedge
push-base-alpine312:  r--push-base-alpine312
push-base-alpine311:  r--push-base-alpine311

push-base-alpineedge:  r--push-base-alpineedge-ans
push-base-alpineedge:  r--push-base-alpineedge-ansb
push-base-alpine312:   r--push-base-alpine312-ansb210
push-base-alpine312:   r--push-base-alpine312-ans210
# push-base-alpine312:   r--push-base-alpine312-ans209
push-base-alpine311:   r--push-base-alpine311-ans209

# --------------------------------------------------------------------------
shell-base-alpine: shell-base-alpineedge

shell-base-alpineedge:           r--shell-base-alpineedge
shell-base-alpine312:            r--shell-base-alpine312
shell-base-alpine311:            r--shell-base-alpine311

shell-base-alpineedge-ans:       r--shell-base-alpineedge-ans
shell-base-alpineedge-ansb:      r--shell-base-alpineedge-ansb
shell-base-alpine312-ansb210:    r--shell-base-alpine312-ansb210
shell-base-alpine312-ans210:     r--shell-base-alpine312-ans210
# # shell-base-alpine312-ans209:     r--shell-base-alpine312-ans209
shell-base-alpine311-ans209:     r--shell-base-alpine311-ans209

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-alpine:             test-base-alpine

test-base-alpine:        test-base-alpineedge
test-base-alpine:        test-base-alpine312
test-base-alpine:        test-base-alpine312

test-base-alpine:        test-base-alpineedge-ans
test-base-alpine:        test-base-alpineedge-ansb
test-base-alpine:        test-base-alpine312-ansb210
test-base-alpine:        test-base-alpine312-ans210
# test-base-alpine:        test-base-alpine312-ans209
test-base-alpine:        test-base-alpine311-ans209

test-base-alpineedge:           r--test-base-alpineedge$(TEST_TAG)
test-base-alpine312:            r--test-base-alpine312$(TEST_TAG)
test-base-alpine311:            r--test-base-alpine311$(TEST_TAG)

test-base-alpineedge-ans:       r--test-base-alpineedge-ans$(TEST_TAG)
test-base-alpineedge-ansb:      r--test-base-alpineedge-ansb$(TEST_TAG)
test-base-alpine312-ansb210:    r--test-base-alpine312-ansb210$(TEST_TAG)
test-base-alpine312-ans210:     r--test-base-alpine312-ans210$(TEST_TAG)
# # test-base-alpine312-ans209:     r--test-base-alpine312-ans209$(TEST_TAG)
test-base-alpine311-ans209:     r--test-base-alpine311-ans209$(TEST_TAG)
