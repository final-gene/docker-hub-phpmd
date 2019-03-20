# PHP mess detector
[![CircleCI](https://circleci.com/gh/final-gene/docker-hub-phpmd/tree/master.svg?style=svg)](https://circleci.com/gh/final-gene/docker-hub-phpmd/tree/master) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/182bd5dac339431cb1caa154f9a1eed9)](https://www.codacy.com/app/final-gene/docker-hub-phpmd?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=final-gene/docker-hub-phpmd&amp;utm_campaign=Badge_Grade)

This is a image to run [PHP mess detector](https://phpmd.org).

## How to use this image
Run the `phpmd` image:

```bash
docker run \
    --rm \
    --volume "$(pwd)":/app \
    finalgene/phpmd
```

For further information take a look at the [official PHP mess detector site](https://phpmd.org).

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/finalgene/docker-hub-phpmd/issues

* **Maintained by:**
[The final gene Team](https://github.com/finalgene)

* **Source of this description:**
[Repository README.md](https://github.com/finalgene/docker-hub-phpmd/blob/master/README.md)
