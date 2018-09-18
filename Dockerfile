FROM alpine:3.8

RUN apk add --no-cache \
  gcc \
  libffi-dev \
  make \
  musl-dev \
  openssl-dev \
  py-pip \
  python \
  python-dev
RUN pip install --no-cache-dir --upgrade \
  pip
RUN pip install --no-cache-dir \
  ansible

WORKDIR /ansible/playbooks

ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_ROLES_PATH /ansible/playbooks/roles
