init-env:
	sh scripts/kind-setup.sh dev

deploy:
	sh scripts/deploy.sh kustomize/dev/ethereum

deploy-dev:
	sh scripts/deploy-dev.sh kustomize/dev/ethereum

clobber:
	sh scripts/clobber.sh ethereum

generate-jwt:
	sh scripts/generate_jwt.sh