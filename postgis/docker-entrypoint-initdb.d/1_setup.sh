#!/bin/bash
# this file orchestrates the setup of the worldview_images database
# after this has run to initialize the database you can access the database like so:
# ```
# [tylar@tylar-pc worldview-analysis-server]$ sudo docker exec -it postgis /bin/bash
# root@35152ec583b6:/# psql -U postgis_user -d worldview_images
# ```

psql -d $POSTGRES_DB -U postgis_user \
    -v SCHEMA_NAME="$SCHEMA_NAME" \
    -v TABLE_NAME="$TABLE_NAME" \
    -f /docker-entrypoint-initdb.d/sql_files/db_init.sql

psql -d $POSTGRES_DB -U postgis_user \
    -v SCHEMA_NAME="$SCHEMA_NAME" \
    -v TABLE_NAME="$TABLE_NAME" \
    -f /docker-entrypoint-initdb.d/sql_files/areas.sql

psql -d $POSTGRES_DB -U postgis_user \
    -v SCHEMA_NAME="$SCHEMA_NAME" \
    -v TABLE_NAME="$TABLE_NAME" \
    -f /docker-entrypoint-initdb.d/sql_files/products.sql

psql -d $POSTGRES_DB -U postgis_user \
    -v SCHEMA_NAME="$SCHEMA_NAME" \
    -v TABLE_NAME="$TABLE_NAME" \
    -f /docker-entrypoint-initdb.d/sql_files/files.sql
