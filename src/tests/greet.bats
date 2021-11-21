# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/greet.sh
}

@test '1: Greet the world' {
    # Mock environment variables or functions by exporting them (after the script has been sourced)
    export PARAM_TO="World"
    # Capture the output of our "Greet" function
    result=$(Greet)
    [ "$result" == "Hello World" ]
}

@test '2: After moving the cli to /usr/bin, it exists & has permissions to execute' {
    $result = $(ls -l ./cli)
    [${result:0:10} == "-rwxr--r--"]
}