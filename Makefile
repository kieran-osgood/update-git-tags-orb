# Circleci commands for testing 
bats:
	circleci local execute --job bats/run
lint:
	circleci local execute --job orb-tools/lint
pack:
	circleci local execute --job orb-tools/pack
publish-dev:
	circleci orb publish src/@orb.yml kieran-osgood/update-git-tags-orb@dev:alpha
list-orbs:
	circleci orb list kieran-osgood
info:
	circleci orb info kieran-osgood/update-git-tags-orb@dev:alpha