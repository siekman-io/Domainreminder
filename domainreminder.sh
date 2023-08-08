#!/bin/bash
#####################################################
# Add Reminders to calender
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
## Domain portfolio to calender OSX
#####################################################

# Fetch variables
source vars

# Check for old files and remove them
rm domains.csv
rm domains-renew.txt

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
awk -F',' 'NR!=1 {print $1"," $5}' domains.csv > domains-renew.txt

# Nested Loop
for line in $(cat domains-renew.txt);
do
  # Add to array
  IFS=$','; split=($line); unset IFS;
  # $split is now a bash array
  echo "Domainname: ${split[0]}"
  echo "Renewaldate: ${split[1]}"
  # Change date format for AppleCalender
  RENEW=$(echo ${split[1]} | awk -v FS=- -v OFS=/ '{print $3,$2,$1}') 

# Applescript to add to calendar set var:DAYS for notify x days before Renewaldate
osascript <<EOD

set RenewalDate to date " $RENEW 11:00"
set theStartDate to RenewalDate + ($DAYS * days)
set DomainName to "${split[0]}"

tell application "Calendar"
	tell calendar "$CALNAME"
		make new event with properties {summary: "Domein " & DomainName & " " & "verlengen/opzeggen", start date:theStartDate, end date:theStartDate, description:DomainName & " verloopt op " & RenewalDate & "\n \n \n  copy and paste line in terminal" & "\n \n $CANCELSCRIPT " & DomainName, url:"$TRANSIP_URL"}
	end tell
end tell
EOD

done

# Cleanup after
rm -rf domains.csv  
rm -rf domains-renew.txt