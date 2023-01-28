#!/bin/bash

ansible all -m user -a "name=ali state=present" -u root --ask-pass
ansible all -m authorized_key -a  "user=ali state=present key={{lookup('file','/home/ansible/.ssh/id_rsa.pub')}}" -u root --ask-pass
ansible all -m copy -a "content='ali ALL=(ALL) NOPASSWD:ALL' dest=/etc/sudoers.d/ali" -u root --ask-pass
