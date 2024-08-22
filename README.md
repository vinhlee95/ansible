## What
Ansible repo to install common packages and configurations on a new system.

## Install software on a new Mac
1. Install ansible
```bash
brew install ansible
```

2. Using ansible-pull to run the playbook from remote (public) git repository
```bash
ansible-pull -U https://github.com/vinhlee95/ansible.git local.yaml
Starting Ansible Pull at 2024-08-22 05:02:47
/usr/bin/ansible-pull -U https://github.com/vinhlee95/ansible.git local.yaml

PLAY [localhost] ***************************************************************

TASK [Gathering Facts] *********************************************************
ok: [localhost]
```

3. Verify if zsh is activated with the new configurations
```bash
zsh
➜  / git:(main) ✗ 
```

## Installation for local development
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
