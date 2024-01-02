deploy-ethereum:
	sh scripts/kustomize-apply.sh kustomize/kind/geth
	