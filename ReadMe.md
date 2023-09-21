
# Source for the Naproche web page

## Requirements

A basic build requires just `make` and `sed`.

The optional automatic rebuilds require `find` + `entr`.


## Building

Run `make` in in this directory to execute the basic build.
This will place the generated HTML files in `./build/`.


## Automatic rebuilding

If you have `find` and `entr` installed, you can have automatic rebuilds by running `make watch`.


## Deployment

You can deploy the web page to GitHub Pages by running `make deploy`.
This will upload the files to the `gh-pages` branch.
Don't forget to also commit the changes to the source files on the regular `main` branch!
