# FV3GFS Physical Parameterization Standalone Versions

This repo contains standalone versions of a selection of the FV3GFS physical parametrizations. They can be run using inputs that have been serialized from an actual c48 run of fv3gfs and are validated against serialized data from the same run right after the parameterization has been called.

## Requirements:
- serialbox installation (branch `savepoint_as_string` from https://github.com/VulcanClimateModeling/serialbox2/)
- gfortran
- wget

## Running

```bash
cd XXX
./get_data.sh
make
./main.x
```

## Docker environment

If you prefer to work in a Docker environment, simply type `./build.sh` to build a Docker image that contains everything you need and `./enter` to enter the image with the correct mounted directories to work on the standalone codes.
