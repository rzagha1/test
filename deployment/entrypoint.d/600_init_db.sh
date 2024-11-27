#!/bin/bash

#assumes database was created (300-ensure-database script)

# START SECTION db init - if you edit these lines manually note that your change will get lost if you run the IQGeo Project Update tool
if ! myw_db $MYW_DB_NAME list versions --layout keys | grep groups | grep version=; then myw_db $MYW_DB_NAME install groups; fi
if ! myw_db $MYW_DB_NAME list versions --layout keys | grep mywapp_schema | grep version=; then myw_db $MYW_DB_NAME install mywapp_common; fi
if ! myw_db $MYW_DB_NAME list versions --layout keys | grep mywis_schema | grep version=; then myw_db $MYW_DB_NAME install survey; fi
# END SECTION