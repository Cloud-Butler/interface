#!/bin/sh

cogctl profile create default http://$(ip route show | awk '/default/ {print $3}'):80 "admin" "${COG_OPT_PASSWORD}"
cogctl group add cog-admin ${COG_OPT_USER}
echo "Added user '${COG_OPT_USER}' as a chatbot owner."
