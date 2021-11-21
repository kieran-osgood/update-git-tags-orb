docker-executor:
	docker build -t=kieranosgood/update-git-tags-orb:$(version) .
docker-push:
	docker push kieranosgood/update-git-tags-orb:$(version)

# Circleci commands for testing 
bats:
	circleci local execute --job bats/run
lint:
	circleci local execute --job orb-tools/lint
pack:
	circleci local execute --job orb-tools/pack