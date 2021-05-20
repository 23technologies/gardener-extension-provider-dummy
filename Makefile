# Copyright (c) 2020 SAP SE or an SAP affiliate company. All rights reserved. This file is licensed under the Apache Software License, v. 2 except as noted otherwise in the LICENSE file
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

REPO_ROOT                   := $(shell dirname $(realpath $(lastword ${MAKEFILE_LIST})))
HACK_DIR                    := ${REPO_ROOT}/hack

#########################################
# Rules for local development scenarios #
#########################################

.PHONY: build
build:
	@vendor/github.com/gardener/gardener/hack/generate-controller-registration.sh provider-dummy charts/gardener-extension-provider-dummy VERSION controller-registration.yaml \
	ControlPlane:dummy Infrastructure:dummy Worker:dummy

#########################################
# Rules for re-vendoring
#########################################

.PHONY: revendor
revendor:
	@GO111MODULE=on go mod vendor
	@GO111MODULE=on go mod tidy
	@chmod +x ${REPO_ROOT}/vendor/github.com/gardener/gardener/hack/*
