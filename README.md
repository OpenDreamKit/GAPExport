# GAPExport

This repository contains a Docker Image to run an export of the GAP Library into a JSON file. 
It can be found as [mathhub/gap-export](https://hub.docker.com/r/mathhub/gap-export) on DockerHub. 

To run the docker image, and place the generated files in a file called `types.json` JSON in the current directory, use:

```bash
docker run -t -i --rm -v $(pwd):/data mathhub/gap-export
```

## What does the script do?

It approximately follows [this list of
instructions](https://gl.mathhub.info/ODK/GAP/blob/master/gap/generating.txt)
to download GAP, install the MathInTheMiddle package, and export
most of the loaded symbols (which should be those in the library
and the default packages) to a JSON file called `types.json`.
This won't include every single thing in the GAP namespace, but
should have most user-facing functions.

## Why is it so badly formatted?

MitM itself doesn't care about formatting, but if you want to
examine it better or upload it to
[mathhub](https://gl.mathhub.info/ODK/GAP/blob/master/gap/gaptypes.json),
then you might consider using a JSON formatter.  The following
should work nicely:
```bash
cat types.json | jq -M --indent 4 . > types-pretty.json
```

## License

Unlicense (read: Public Domain)
