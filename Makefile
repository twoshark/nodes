init-dev:
	sh scripts/kind-setup.sh dev

deploy-eth:
	sh scripts/kustomize-apply.sh kustomize/kind/geth

clobber-eth:
	sh scripts/clobber.sh kustomize/kind/geth