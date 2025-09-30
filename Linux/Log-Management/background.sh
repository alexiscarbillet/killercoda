#!/bin/bash

# Create a large fake log file to fill disk space
fallocate -l 10G /var/log/biglog.log || dd if=/dev/zero of=/var/log/biglog.log bs=1M count=12000
