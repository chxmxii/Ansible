#!/bin/bash

ansible all -m yum_repository -a "name=EPEL description=RHEL8 baseurl=https://dl.fedoraproject.org/pub/epel/epel-release-latest8.noarch.rmp gpgcheck=yes gpgkey=http://example.key enabled=yes" 
