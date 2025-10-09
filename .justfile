[no-cd]
build f="main":
    apio verify
    apio sim

[no-cd]
@run f="main": (build f)

@init name:
    if [[ -e '{{invocation_dir() / name}}' ]]; then echo "Project exists: {{invocation_dir() / name}}"; exit 1; fi
    mkdir -p '{{invocation_dir() / name}}'
    cp -r -t '{{invocation_dir() / name}}' template/*
    echo "Initialized new project at {{invocation_dir() / name}}"
