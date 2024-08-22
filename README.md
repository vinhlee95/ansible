## What
Ansible repo to install common packages and configurations on a new system.

## Installation
1. Build docker image
```bash
docker build -t new-machine .
```

2. Run the container
```bash
docker run --rm -it new-machine
```

3. See that zsh is activated with the new configurations inside the container
```bash
➜  / git:(main) ✗ which zsh
/usr/bin/zsh
```

## Install software on a new Mac
1. Install ansible
```bash
brew install ansible
```

2. Using ansible-pull to run the playbook
```bash
ansible-pull -U "git_url"
```
