# v2.6.0    2020-01-26     webmaster@highskillz.com

# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
build-base: build-base-alpine

build-base-alpine: build-base-alpineedge
build-base-alpine: build-base-alpine311
build-base-alpine: build-base-alpine310
build-base-alpine: build-base-alpine38
build-base-alpine: build-base-alpine34

build-base-alpine: build-base-alpineedge-ans
# build-base-alpine: build-base-alpine311-ans29-py38
build-base-alpine: build-base-alpine311-ans29
build-base-alpine: build-base-alpine311-ans27
build-base-alpine: build-base-alpine310-ans29
build-base-alpine: build-base-alpine310-ans27
build-base-alpine: build-base-alpine38-ans27
build-base-alpine: build-base-alpine34-ans27
# dockerfiles: 9


build-base-alpineedge:                                     r--build-base-alpineedge
build-base-alpine311:                                      r--build-base-alpine311
build-base-alpine310:                                      r--build-base-alpine310
build-base-alpine38:                                       r--build-base-alpine38
build-base-alpine34:                                       r--build-base-alpine34

build-base-alpineedge-ans:          build-base-alpineedge  r--build-base-alpineedge-ans
# build-base-alpine311-ans29-py38:                           r--build-base-alpine311-ans29-py38
build-base-alpine311-ans29:         build-base-alpine311   r--build-base-alpine311-ans29
build-base-alpine311-ans27:         build-base-alpine311   r--build-base-alpine311-ans27
build-base-alpine310-ans29:         build-base-alpine310   r--build-base-alpine310-ans29
build-base-alpine310-ans27:         build-base-alpine310   r--build-base-alpine310-ans27
build-base-alpine38-ans27:          build-base-alpine38    r--build-base-alpine38-ans27
build-base-alpine34-ans27:          build-base-alpine34    r--build-base-alpine34-ans27
# images:      9

# --------------------------------------------------------------------------
pull-base: pull-base-alpine

pull-base-alpine: r--pull-base-alpineedge
pull-base-alpine: r--pull-base-alpine311
pull-base-alpine: r--pull-base-alpine310
pull-base-alpine: r--pull-base-alpine38
pull-base-alpine: r--pull-base-alpine34

pull-base-alpine: r--pull-base-alpineedge-ans
# pull-base-alpine: r--pull-base-alpine311-ans29-py38
pull-base-alpine: r--pull-base-alpine311-ans29
pull-base-alpine: r--pull-base-alpine311-ans27
pull-base-alpine: r--pull-base-alpine310-ans29
pull-base-alpine: r--pull-base-alpine310-ans27
pull-base-alpine: r--pull-base-alpine38-ans27
pull-base-alpine: r--pull-base-alpine34-ans27

# --------------------------------------------------------------------------
push-base: push-base-alpine

push-base-alpine: r--push-base-alpineedge
push-base-alpine: r--push-base-alpine311
push-base-alpine: r--push-base-alpine310
push-base-alpine: r--push-base-alpine38
push-base-alpine: r--push-base-alpine34

push-base-alpine: r--push-base-alpineedge-ans
# push-base-alpine: r--push-base-alpine311-ans29-py38
push-base-alpine: r--push-base-alpine311-ans29
push-base-alpine: r--push-base-alpine311-ans27
push-base-alpine: r--push-base-alpine310-ans29
push-base-alpine: r--push-base-alpine310-ans27
push-base-alpine: r--push-base-alpine38-ans27
push-base-alpine: r--push-base-alpine34-ans27

# --------------------------------------------------------------------------
shell-base-alpine: shell-base-alpineedge

shell-base-alpineedge:           r--shell-base-alpineedge
shell-base-alpine311:            r--shell-base-alpine311
shell-base-alpine310:            r--shell-base-alpine310
shell-base-alpine38:             r--shell-base-alpine38
shell-base-alpine34:             r--shell-base-alpine34

shell-base-alpineedge-ans:       r--shell-base-alpineedge-ans
# shell-base-alpine311-ans29-py38: r--shell-base-alpine311-ans29-py38
shell-base-alpine311-ans29:      r--shell-base-alpine311-ans29
shell-base-alpine311-ans27:      r--shell-base-alpine311-ans27
shell-base-alpine310-ans29:      r--shell-base-alpine310-ans29
shell-base-alpine310-ans27:      r--shell-base-alpine310-ans27
shell-base-alpine38-ans27:       r--shell-base-alpine38-ans27
shell-base-alpine34-ans27:       r--shell-base-alpine34-ans27

# --------------------------------------------------------------------------
# TEST_TAG=-181112c

# --------------------------------------------------------------------------
test-alpine:             test-base-alpine

test-base-alpine:        test-base-alpineedge
test-base-alpine:        test-base-alpine311
test-base-alpine:        test-base-alpine310
test-base-alpine:        test-base-alpine38
test-base-alpine:        test-base-alpine34

test-base-alpine:        test-base-alpineedge-ans
# test-base-alpine:        test-base-alpine311-ans29-py38
test-base-alpine:        test-base-alpine311-ans29
test-base-alpine:        test-base-alpine311-ans27
test-base-alpine:        test-base-alpine310-ans29
test-base-alpine:        test-base-alpine310-ans27
test-base-alpine:        test-base-alpine38-ans27
test-base-alpine:        test-base-alpine34-ans27

test-base-alpineedge:           r--test-base-alpineedge$(TEST_TAG)
test-base-alpine311:            r--test-base-alpine311$(TEST_TAG)
test-base-alpine310:            r--test-base-alpine310$(TEST_TAG)
test-base-alpine38:             r--test-base-alpine38$(TEST_TAG)
test-base-alpine34:             r--test-base-alpine34$(TEST_TAG)

test-base-alpineedge-ans:       r--test-base-alpineedge-ans$(TEST_TAG)
# test-base-alpine311-ans29-py38: r--test-base-alpine311-ans29-py38$(TEST_TAG)
test-base-alpine311-ans29:      r--test-base-alpine311-ans29$(TEST_TAG)
test-base-alpine311-ans27:      r--test-base-alpine311-ans27$(TEST_TAG)
test-base-alpine310-ans29:      r--test-base-alpine310-ans29$(TEST_TAG)
test-base-alpine310-ans27:      r--test-base-alpine310-ans27$(TEST_TAG)
test-base-alpine38-ans27:       r--test-base-alpine38-ans27$(TEST_TAG)
test-base-alpine34-ans27:       r--test-base-alpine34-ans27$(TEST_TAG)
