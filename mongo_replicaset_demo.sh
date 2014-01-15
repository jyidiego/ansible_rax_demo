#!/bin/bash

#
# This assumes:
# - that ansible-playbook is in your path
# - that you've uploaded a ssh public key via nova and named it ansible_demo
#   - i.e. nova keypair-add --pub-key ~/.ssh/id_rsa.pub ansible_demo
#

ansible-playbook -i ./hosts -u root -vvvv --private-key ~/.ssh/id_rsa raxcloud.yml
