# jekyll-docker
A dockerfile for building a [Jeykll](https://jekyllrb.com) container for testing a local Jeykll site.

Mount your Jekyll files to /data and open port 4000.

To build the image:
```bash
$ docker build . -t jeykll
```

To view a jeykll site:
```bash
$ docker run -p 4000:4000 -v /data:../path/to/site jeykll
```

Or

```bash
$ docker-compose up -d
```

Cleans the _site & jeykll cache directories, then start Jekyll in incremental build mode. 


