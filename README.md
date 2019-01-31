# Ansible in Docker

Docker images for running Ansible.

## Usage

### `ansible` command

```bash
docker run \
  --rm
  --interactive \
  --tty \
  --volume $PWD/inventory:/etc/ansible/hosts:ro \
  busser/ansible \
    --user arthur \
    --ask-pass \
    --module-name ping \
    all
```

### `ansible-playbook` command

```bash
docker run \
  --rm \
  --interactive \
  --tty \
  --volume $PWD/inventory:/etc/ansible/hosts:ro \
  --volume $PWD/playbooks:/ansible/playbooks:ro \
  --volume $PWD/roles:/ansible/roles:ro \
  busser/ansible-playbook \
    --user arthur \
    --ask-pass \
    playbook.yaml
```

## Building

### `ansible` image

```bash
docker build \
  --tag busser/ansible \
  ansible
```

### `ansible-playbook` image

```bash
docker build \
  --tag busser/ansible-playbook \
  ansible-playbook
```
