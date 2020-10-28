# README

## About
Source code repository can be found [here](http://homer.ucsd.edu/homer/).

## Building the container for Bridges (or similar)
There is no need to build a container, because an image is already available from the Galaxy project, hence all you need to do is run

```
bash ./pull.sh
```

## Installing the container on Bridges (or similar)
Copy the

* `SIF` file
* and the `homer` script

to `/opt/packages/homer/4.11.0`.

Copy the file `modulefile` to `/opt/modules/homer` as `4.11.0`.

## Test
To run the available tests, run the command

```
bash ./test.sh
```

---
[![PSC](http://www.andrew.cmu.edu/user/icaoberg/images/logos/psc.png)](http://www.psc.edu)

[icaoberg](http://www.andrew.cmu.edu/~icaoberg) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
