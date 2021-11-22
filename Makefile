# Circleci commands for testing 
bats:
	circleci local execute --job bats/run
lint:
	circleci local execute --job orb-tools/lint
pack:
	circleci local execute --job orb-tools/pack