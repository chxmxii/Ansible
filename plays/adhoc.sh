#!/bin/bash
ansible all -m user -a "name=automation state=present" -u root --ask-pass   --ssh-common-args='-o StrictHostKeyChecking=no'

ansible all -m authorized_key -a "user=automation state=present key={{ lookup('file','/home/automation/.ssh/id_rsa.pub') }}" -u root --ask-pass  --ssh-common-args='-o StrictHostKeyChecking=no'

ansible all -m copy -a "content='automation ALL=(ALL) NOPASSWD:ALL' dest=/etc/sudoers.d/automation" -u root --ask-pass --ssh-common-args='-o StrictHostKeyChecking=no'
