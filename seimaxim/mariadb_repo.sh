#!/bin/sh

ansible database -m yum_repository -a "name=MariaDB description='Repository MariaDB-Server' baseurl=http://yum.mariadb.org/10.5/centos8-amd64 gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB gpgcheck=yes enabled=yes" -u root --ask-pass 
