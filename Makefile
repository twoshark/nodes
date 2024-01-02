init-dev:
	sh scripts/kind-setup.sh dev

deploy-dev-eth:
	sh scripts/kustomize-apply.sh kustomize/dev/ethereum

clobber-dev-eth:
	sh scripts/clobber.sh kustomize/dev/ethereum