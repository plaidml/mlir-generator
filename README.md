# MLIR Generator

## Rationale

This repository is meant to help MLIR pass writers to generate MLIR files
that often come from ML/HPC sources, to allow testing and developing their
passes (as well as creating unit tests) with the current state of the known
front-ends.

## How To Use

_Warning: This is very much work-in-progress, don't expect half of it to work._

Each front-end has a prepare script, for example:
```
cd torch-script
./prepare.sh
```

It also has models ready to use (after prepared):
```
source venv/bin/activate
python models/linear.py
```

Results are in `<front-end-name>/mlir`.

## Development

### Adding a new front-end

If you want to build an existing front-end, you need to:
1. Add a new directory for the front-end
2. Add a `prepare.sh` script that installs it and prepares the virtualenv
4. Add a `generate.sh` script that generates all the MLIR files
