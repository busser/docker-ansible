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
  --volume $PWD/playbook.yaml:/ansible/playbooks/playbook.yaml:ro \
  --volume $PWD/roles:/ansible/playbooks/roles:ro \
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
