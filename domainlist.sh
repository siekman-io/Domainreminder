#!/bin/bash
#####################################################
# Get domain portfolio
#####################################################
#        _      _                            _
#    ___(_) ___| | ___ __ ___   __ _ _ __   (_) ___
#   / __| |/ _ \ |/ / '_ ` _ \ / _` | '_ \  | |/ _ \
#   \__ \ |  __/   <| | | | | | (_| | | | |_| | (_) |
#   |___/_|\___|_|\_\_| |_| |_|\__,_|_| |_(_)_|\___/                 
#
#              Created by Jouke Siekman
#             Netherlands 2023 Leerbroek
#                https://siekman.io
#
#####################################################
## Domain portfolio
#####################################################

# Fetch variables
source vars

# Check for old files and remove them
rm domains.csv
rm domainslist.txt

# Get domainslist from TransIP
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $APITOKEN" "https://api.transip.nl/v6/domains/" > domains.txt

# Convert output to prettify readable json
jq . domains.txt > domains.json

# Convert to a csv comma seperated file
$RUNPYTHON convert.py

# Cleanup the files we don't need anymore
rm domains.txt
rm domains.json

# Extract colums from csv
awk -F',' 'NR!=1 {print "-", $1}' domains.csv > domainlist.txt


# Cleanup after
rm -rf domains.csv  
# rm -rf domains-renew.txt