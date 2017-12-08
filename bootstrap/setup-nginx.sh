#!/bin/bash

set -e

systemctl enable nginx
systemctl start nginx
