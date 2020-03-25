#!/bin/sh

cogctl profile create default http://localhost:4000 "admin" "${COG_OPT_PASSWORD}"
cogctl ${COG_ARGV_0} ${COG_ARGV_1} ${COG_ARGV_2} ${COG_ARGV_3} ${COG_ARGV_4} ${COG_ARGV_5}
