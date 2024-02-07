![Status](https://github.com/pscedu/singularity-homer/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-homer/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-homer)
![forks](https://img.shields.io/github/forks/pscedu/singularity-homer)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-homer)
![License](https://img.shields.io/github/license/pscedu/singularity-homer)

# singularity-homer
![Logo](http://homer.ucsd.edu/homer/pic2.gif)

Singularity recipe for [homer](http://homer.ucsd.edu/homer/).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `homer` script

to `/opt/packages/homer/4.11.0`.

Copy the file `modulefile.lua` to `/opt/modulefiles/homer` as `4.11.0`.

## Building the image using the recipe

### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image locally.

```
bash ./build.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2024 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).

