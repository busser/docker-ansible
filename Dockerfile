FROM alpine:3.8

RUN apk add --no-cache --update \
  gcc \
  libffi-dev \
  make \
  musl-dev \
  openssh \
  openssl-dev \
  py-pip \
  python \
  python-dev \
  sshpass
RUN pip install --no-cache-dir --upgrade \
  pip
RUN pip install --no-cache-dir \
  ansible

WORKDIR /ansible/playbooks

ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_ROLES_PATH /ansible/playbooks/roles
