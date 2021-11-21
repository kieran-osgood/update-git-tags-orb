# Runs prior to every test
setup() {
    # Load our script file.
    # source ./src/scripts/greet.sh
}

@test '1: After moving the cli to /usr/bin, it exists & has permissions to execute' {
    $result = $(ls -l ./cli)
    [${result:0:10} == "-rwxr--r--"]
}