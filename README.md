# [Gardener Extension for a dummy provider](https://gardener.cloud)

Project Gardener implements the automated management and operation of [Kubernetes](https://kubernetes.io/) clusters as a service.
Its main principle is to leverage Kubernetes concepts for all of its tasks.

Please find more information regarding the extensibility concepts and a detailed proposal [here](https://github.com/gardener/gardener/blob/master/docs/proposals/01-extensibility.md).

## Use case for this "provider"

This repository contains all files to generate a "controller-registration.yaml" for a "provider-dummy" by running `make build`. It registers a "ControllerRegistration" for use in Gardener. It does not deploy any containers. It's use case is to satisfy the Gardener logic for an extension provider but executing the actual provider code outside the cluster for development purposes.

## Feedback and Support

Feedback and contributions are always welcome. Please report bugs or suggestions as [GitHub issues](https://github.com/23technologies/gardener-extension-provider-hcloud/issues) or join our [Slack channel #gardener](https://kubernetes.slack.com/messages/gardener) (please invite yourself to the Kubernetes workspace [here](http://slack.k8s.io)).

## Learn more!

Please find further resources about out project here:

* [Our landing page gardener.cloud](https://gardener.cloud/)
* ["Gardener, the Kubernetes Botanist" blog on kubernetes.io](https://kubernetes.io/blog/2018/05/17/gardener/)
* ["Gardener Project Update" blog on kubernetes.io](https://kubernetes.io/blog/2019/12/02/gardener-project-update/)
* [GEP-1 (Gardener Enhancement Proposal) on extensibility](https://github.com/gardener/gardener/blob/master/docs/proposals/01-extensibility.md)
* [GEP-4 (New `core.gardener.cloud/v1alpha1` API)](https://github.com/gardener/gardener/blob/master/docs/proposals/04-new-core-gardener-cloud-apis.md)
* [Extensibility API documentation](https://github.com/gardener/gardener/tree/master/docs/extensions)
* [Gardener Extensions Golang library](https://godoc.org/github.com/gardener/gardener/extensions/pkg)
* [Gardener API Reference](https://gardener.cloud/api-reference/)
