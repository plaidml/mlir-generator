# MLIR Generator

## Rationale

This repository is meant to help MLIR pass writers to generate MLIR files
that often come from ML/HPC sources, to allow testing and developing their
passes (as well as creating unit tests) with the current state of the known
front-ends.

The idea is to have a Docker image upstream with all the environment needed
(including builds of each front-end) so that developers or CI builds can use
it to run their own scripts to build existing models (and examples) down to
MLIR files.

The Docker image can be rebuilt locally with different parameters or upgraded
on a time-based cadence, to validate the new developments in each front-end.

Regardless, this repository also has a list of example models and how to use
each front-end to generate each final MLIR format (dialects, etc), to help
with testing, even if one does not use the Docker image.

## How To Use

_Warning: This is very much work-in-progress, don't expect half of it to work._

Each front-end has a build script, for example:
```
cd $SRC
./scripts/build-iree.sh
```

It also has models ready to use (after built):
```
source external/iree/mlir_venv/bin/activate
python front-ends/iree/models/linear.py
```

Results are in `front-ends/<front-end-name>/mlir`.

## Updating

Once inside the repo, `git pull` from inside the `mlir-generator` repo should give you an updated state. You can clear the external directory and run the build scripts again, by hand, to recreate if something goes wrong.

## Debugging

Each script has an idea of what to do, use them wisely.

## Development

### Building front-ends

Run `./scripts/build-<front-end-name>.sh` at the root of the repository.

To build a debug version, pass `-d` to the script.

To build a release+debug symbols version, pass `-rd` to the script.

### Adding a new front-end

If you want to build an existing front-end, you need to:
1. Add its repository to `external` as a submodule
2. Add a build script to `scripts` that builds it and prepares the virtualenv
3. Add the front-end to `scripts/emit-mlir-files.sh` `FRONTENDS` variable
4. Add a `<front-end-name>-generate.sh` script that generates all the MLIR files

_Optional: Update the docker image and push again_

### Using in CI

Docker images trade build time for download time. There is no caching, especially for clean builds.

#### With docker

Just repeat the how-to above inside a CI job, then execute your script with `docker exec`.

#### Without docker

You'll need to clone this repo and build the front-ends (see above).

Take a look at the `./scripts/<front-end-name>-generate.sh` for an idea how to generate the MLIR files.
