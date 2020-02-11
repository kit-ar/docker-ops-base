# .ONESHELL:
.SHELLFLAGS = -e

# --------------------------------------------------------------------------
r--build-base-%: check-env-base
	cd $(THIS_DIR)src.base ;\
	docker build $(BUILD_CACHE) -f Dockerfile.$* \
			-t $(DH_ID_base):$* \
			-t $(DH_ID_base):$*-${TAG_VERSION} \
			. \
		| tee /tmp/docker-ops-base-$*.log \
		;\

# --------------------------------------------------------------------------
r--push-base-%:
	docker push $(DH_ID_base):$*
	docker push $(DH_ID_base):$*-${TAG_VERSION}

# --------------------------------------------------------------------------
r--push-base-%:
	docker push $(DH_ID_base):$*
	docker push $(DH_ID_base):$*-${TAG_VERSION}


# --------------------------------------------------------------------------
r--pull-base-%:
	docker pull $(DH_ID_base):$*
	docker pull $(DH_ID_base):$*-${TAG_VERSION}


# --------------------------------------------------------------------------
r--shell-base-%:
	docker run -it --rm $(DH_ID_base):$* bash


r--shell-base%-tag:
	docker run -it --rm $(DH_ID_base):$*-${TAG_VERSION} bash


# --------------------------------------------------------------------------
r--test-base-%:
	@echo "#############################################"
	@echo "$*"
	@echo ""
	docker run -it --rm $(DH_ID_base):$*

r--test-base-%-tag:
	@echo "#############################################"
	@echo "$*-${TAG_VERSION}"
	@echo ""
	docker run -it --rm $(DH_ID_base):$*-${TAG_VERSION}
