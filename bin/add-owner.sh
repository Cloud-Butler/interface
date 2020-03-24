#!/bin/sh

# Verify values.
if [ ${COG_OPT_USER} ] || [ ${COG_OPT_PASSWORD} ]; then
    echo "Password or user-to-adjust not specified."
elif [[ ${COG_OPT_PASSWORD} != ${CB_ADMIN_PASSWORD} ]]; then
    echo "Password is incorrect."
else
    cogctl group add cog-admin ${COG_OPT_USER}
    echo "The user '${COG_OPT_USER}' has been added as a chatbot owner."
fi
