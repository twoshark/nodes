init-dev:
	sh scripts/kind-setup.sh dev

deploy-dev-eth:
	sh scripts/kustomize-apply.sh kustomize/dev/geth

clobber-dev-eth:
	sh scripts/clobber.sh kustomize/dev/geth