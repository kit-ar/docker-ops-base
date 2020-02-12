# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
r--build-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.$* \
			-t $(DH_ID_base):$* \
			-t $(DH_ID_base):$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-${DH_ID_base}-$*.log \
		;\

# --------------------------------------------------------------------------
r--push-base-%: check-env-base
	docker push $(DH_ID_base):$*
	docker push $(DH_ID_base):$*-${TAG_VERSION}

# --------------------------------------------------------------------------
r--push-base-%: check-env-base
	docker push $(DH_ID_base):$*
	docker push $(DH_ID_base):$*-${TAG_VERSION}


# --------------------------------------------------------------------------
r--pull-base-%: check-env-base
	docker pull $(DH_ID_base):$*
	docker pull $(DH_ID_base):$*-${TAG_VERSION}


# --------------------------------------------------------------------------
r--shell-base-%: check-env-base
	docker run -it --rm $(DH_ID_base):$* bash


r--shell-base%-tag: check-env-base
	docker run -it --rm $(DH_ID_base):$*-${TAG_VERSION} bash


# --------------------------------------------------------------------------
r--test-base-%: check-env-base
	@echo "#############################################"
	@echo "$*"
	@echo ""
	docker run -it --rm $(DH_ID_base):$*

r--test-base-%-tag: check-env-base
	@echo "#############################################"
	@echo "$*-${TAG_VERSION}"
	@echo ""
	docker run -it --rm $(DH_ID_base):$*-${TAG_VERSION}
