#!/bin/bash
sleep 10
if test -f /opt/cloudbutler/bundles/helper/config.yaml
then
    echo "Helper bundle already installed."
else
    echo "Installing helper bundle..."
    cd /opt/cloudbutler/bundles/helper/
    wget https://raw.githubusercontent.com/CloudButler/helper/master/config.yaml
    docker exec -it cloudbutler_cog_1 cogctl bundle install bundles/helper/config.yaml -e -r default
    echo "Done!"
fi
