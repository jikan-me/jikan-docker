# docker-jikan

Requires `docker`, `docker-compose`.

Originally adapted from [JikanDockerized](https://github.com/zunjae/JikanDockerized)

To run:

```
git clone 'https://github.com/jikan-me/jikan-docker'
cd jikan-docker/v3
docker-compose up
# or, to daemonize
docker-compose up -d
```

If you want to change the expiry values for the Jikan endpoints, edit the [`v3/jikan/.env`](v3/jikan/.env) file.

### Troubleshooting

If something has broken (i.e. a parser issue) and a [new Jikan release](https://github.com/jikan-me/jikan/releases) has been released to fix it, you can rebuild the image, or `exec` into the container and run `composer update jikan-me/jikan`

If you're having issues and want to reset everything, in the `v3` directory, run something like:

```
docker-compose stop
docker stop $(docker ps -aq)
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -aq)
```

Make sure your docker is working by running something like `docker run hello-world`

My docker knowledge is quite amateurish, so feel free to PR to improve this
