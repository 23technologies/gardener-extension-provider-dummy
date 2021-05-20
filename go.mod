module github.com/23technologies/gardener-extension-provider-dummy

go 1.15

require github.com/gardener/gardener v1.21.0

replace (
	github.com/gardener/gardener => github.com/gardener/gardener v1.21.0
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.4.1
	k8s.io/api => k8s.io/api v0.20.6
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.20.6
	k8s.io/apimachinery => k8s.io/apimachinery v0.20.6
	k8s.io/apiserver => k8s.io/apiserver v0.20.6
	k8s.io/client-go => k8s.io/client-go v0.20.6
	k8s.io/code-generator => k8s.io/code-generator v0.20.6
	k8s.io/component-base => k8s.io/component-base v0.20.6
	k8s.io/kubelet => k8s.io/kubelet v0.20.6
	sigs.k8s.io/controller-runtime => github.com/gardener/controller-runtime v0.8.3-gardener.1
)
