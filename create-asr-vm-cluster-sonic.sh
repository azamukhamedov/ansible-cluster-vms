#!/bin/bash

THIS_DIR=$( (cd "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P) )
set -x
bin/run-ansible-playbook.sh \
    -vvv \
    -e libvirt_host=asr-sonic \
    -e libvirt_cluster_inventory_dir="$THIS_DIR/ansible/inventory" \
    ansible/playbooks/create-asr-vm-cluster-sonic.yml
