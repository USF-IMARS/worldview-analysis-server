psql -d $POSTGRES_DB -U postgis_user \
    -f /docker-entrypoint-initdb.d/sql_files/db_init.sql
