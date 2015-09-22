# Ruby koans
The Koans walk you along the path to enlightenment in order to learn Ruby. The goal is to learn the Ruby language, syntax, structure, and some common functions and libraries. You will also learn about ruby culture.

http://rubykoans.com/

# Usage of the docker container

To use this docker container to run Ruby koans follow these steps:

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

**Run "path_to_enlightenment.rb"**

```
docker-compose run ruby ruby -r ./path_to_enlightenment.rb
```

**Change the code to progress in Koans**
Edit the files placed in `data/code/koans`

then, rerun the docker-compose command to see what you achieved.

## Other goodies

**Start an interactive ruby shell (`irb`)**

```
docker-compose run ruby
```

**Run a custom file you added in `data/code`**

```
docker-compose run ruby -r ../[custom file]
```
