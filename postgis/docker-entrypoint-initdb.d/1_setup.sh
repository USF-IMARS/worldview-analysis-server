psql -d $POSTGRES_DB -U postgis_user \
    -v SCHEMA_NAME="$SCHEMA_NAME" \
    -v TABLE_NAME="$TABLE_NAME" \
    -f /docker-entrypoint-initdb.d/sql_files/db_init.sql
