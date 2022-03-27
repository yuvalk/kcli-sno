#!/bin/bash

cd /var/www/html
kcli create cluster openshift --paramfile /root/sno_params.yml {{ cluster }}

chmod +r {{ cluster }}.iso
restorecon {{ cluster }}.iso
