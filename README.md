# GAPExport

This repository contains a Docker Image to run an export of the GAP Library into a JSON file. 
It can be found as [mathhub/gap-export](https://hub.docker.com/r/mathhub/gap-export) on DockerHub. 

To run the docker image, and place the generated files in a file called `types.json` JSON in the current directory, use:

```
docker run -t -i --rm -v $(pwd):/data mathhub/gap-export
```

## License

Unlicense (read: Public Domain)