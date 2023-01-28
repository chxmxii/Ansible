#!/bin/bash

ansible all -m user -a "name=automated state=present" -u root --ask-pass 
ansible all -m authorized_key -a "user=automated state=present key={{ lookup('file','/home/automated/.ssh/id_rsa.pub') }}" -u root --ask-pass
ansible all -m copy -a "content='automated ALL=(ALL) NOPASSWD:ALL' dest=/etc/sudoers.d/automated" -u root --ask-pass
