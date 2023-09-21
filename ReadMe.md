
# Source for the Naproche web page

## Requirements

A basic build requires just `make` and `sed`.

Optionally, you might want to install `find` + `entr` or `python`.


## Basic build

Run `make` in in this directory to execute the basic build.
This will place the generated HTML files in `./build/`.


## Automatic rebuilding

If you have `find` and `entr` installed, you can have automatic rebuilds by running `make watch`.
