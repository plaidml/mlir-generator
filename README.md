MLIR Generator
==============

Rationale
---------

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


TODO
----

 * Create a Dockerfile with Torch-MLIR, IREE, PlaidML cloned and built
 * Create a set of shell scripts that run all builders to all MLIR files
 * Create directories per front-end with Python scripts of simple models
 * Use this repository as CI for other projects
