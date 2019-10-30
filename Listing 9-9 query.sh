# *Listing 9-9: This runs a simple query to show which users have created the most scratch orgs on our default dev hub. Bash allows commands to be strung together easily. Note the use of `\` to allow commands to span multiple lines.*


#!/bin/bash
DEFAULT_DEVHUB=$(sfdx force:config:list --json | \
    jq --raw-output '.result[] | select(.key == "defaultdevhubusername").value')

sfdx force:data:soql:query --query \
  'SELECT CreatedBy.Name, Count(Id) FROM ScratchOrgInfo
   GROUP BY CreatedBy.Name
   ORDER BY Count(Id) DESC
   LIMIT 10' \
  --targetusername $DEFAULT_DEVHUB
