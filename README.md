# Usage of the docker container

To use this docker container to run ruby follow these steps:

**Ensure you have docker and docker-compose installed**

- Install [docker](https://docs.docker.com/installation/ubuntulinux/) - in Debian/Ubuntu run `curl -sSL https://get.docker.com/ubuntu/ | sudo sh`
- Grant [non-root access](https://docs.docker.com/installation/ubuntulinux/#giving-non-root-access): `sudo gpasswd -a ${USER} docker && sudo service docker restart`
- after granting root access, *Logout* and then Log on Again. *Note*: Maybe reboot will be required
- Install [docker-compose](https://docs.docker.com/compose/) - in Debian/Ubuntu run:
```
curl -L https://github.com/docker/compose/releases/download/1.4.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

**Clone this repo:**

```
git clone https://github.com/georgeyord/ruby-koans.git
```


**Run the complete solution in `data/code/ruby-course`**

```
docker-compose run ruby run.rb
```

**Start an interactive ruby shell (`irb`)**

```
docker-compose run ruby irb
```
