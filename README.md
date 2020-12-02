# docker-centos6

## What is it?

Just a basic centos6 docker image with fixed yum default configuration (broken after centos6 EOL) :

- `base.repo` modified (to use a "vault" mirror)
- `epel.repo` added (to use a "vault" mirror) for [https://fedoraproject.org/wiki/EPEL](Fedora EPEL) extra repository
- `scl.repo` added (to use a "vault" mirror) for [https://www.softwarecollections.org/](SCL) extra repository

**WARNING: EPEL and SCL repositories are not enabled by default in upstream centos6 docker image, feel free to delete the corresponding `.repo` files in `/etc/yum.repos.d/` if you don't want them at all**

## Usage

Use `metwork/centos6:latest` instead of `centos:centos6` docker image label.

Example: `docker run -it metwork/centos6:latest bash`
