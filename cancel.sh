x#!/bin/bash
#####################################################
# Cancel domain
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
## Cancel domain by API
#####################################################

# Fetch variables
source vars

# Api command to cancel a domain registration by TransIP API
curl -X DELETE \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $APITOKEN" \
-d '
{
  "endTime": "end"
} 
' \
"https://api.transip.nl/v6/domains/$1"

