#!/bin/bash

CLUSTER={{ cluster }}
IP={{ bmc_ip }}
MODEL={{ bmc_model }}
USER={{ bmc_username }}
PASSWORD={{ bmc_password }}
ISO_URL="http://$(hostname -I | cut -f1 -d" " | xargs)/$CLUSTER-sno.iso"
kcli start baremetal-host -P iso_url=$ISO_URL -P url=$IP -P model=$MODEL -P user=$USER -p password=$PASSWORD
