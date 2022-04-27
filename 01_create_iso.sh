#!/bin/bash

kcli download oc
mv oc /root/bin/oc

cd /var/www/html
kcli create cluster openshift --paramfile /root/sno_params.yml {{ cluster }}

chmod +r {{ cluster }}-sno.iso
restorecon {{ cluster }}-sno.iso
