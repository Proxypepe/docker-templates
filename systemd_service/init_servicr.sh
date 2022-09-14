#!/bin/bash

systemctl enable /etc/systemd/system/name.service
ln -s '/etc/systemd/system/name.service' \
'/etc/systemd/system/multi-user.target.wants/name.service'
systemctl start name.service
