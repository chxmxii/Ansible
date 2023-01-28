#!/bin/bash 
ansible all -m user -a "name=ismat" -u root --ask-pass
ansible all -m authorized_key -a "user=ismat key={{lookup('file','/home/ismat/.ssh/id_rsa.pub')}} state=present" -u root --ask-pass
ansible all -m copy -a "content='ismat ALL=(ALL) NOPASSWD:ALL' dest=/etc/sudoers.d/ismat" -u root --ask-pass
