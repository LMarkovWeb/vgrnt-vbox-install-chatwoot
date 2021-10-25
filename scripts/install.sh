#!/bin/bash

wget https://raw.githubusercontent.com/chatwoot/chatwoot/master/deployment/setup_20.04.sh -O setup.sh
chmod 755 setup.sh
./setup.sh master << 'EOF'
no
EOF
# Would you like to configure Webserver and SSL (yes or no): no