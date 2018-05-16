#!/bin/bash
# Shell script to create an new data schema for a 3DCityDB instance
# on PostgreSQL/PostGIS

# Provide your database details here ------------------------------------------
export PGBIN=path_to_psql
export PGHOST=your_host_address
export PGPORT=5432
export CITYDB=your_database
export PGUSER=your_username
#------------------------------------------------------------------------------

# add psql to PATH
export PATH="$PGBIN:$PATH"

# cd to path of the shell script
cd "$( cd "$( dirname "$0" )" && pwd )" > /dev/null

# Welcome message
echo ' _______   ___ _ _        ___  ___ '
echo '|__ /   \ / __(_) |_ _  _|   \| _ )'
echo ' |_ \ |) | (__| |  _| || | |) | _ \'
echo '|___/___/ \___|_|\__|\_, |___/|___/'
echo '                     |__/          '
echo
echo '3D City Database - The Open Source CityGML Database'
echo
echo '######################################################################################'
echo
echo 'Welcome to the 3DCityDB Setup Script. This script will guide you through the process'
echo 'of setting up a 3DCityDB instance. Please follow the instructions of the script.'
echo 'Enter the required parameters when prompted and press ENTER to confirm.'
echo 'Just press ENTER to use the default values.'
echo
echo 'Documentation and help:'
echo '   3DCityDB website:    https://www.3dcitydb.org'
echo '   3DCityDB on GitHub:  https://github.com/3dcitydb'
echo
echo 'Having problems or need support?'
echo '   Please file an issue here:'
echo '   https://github.com/3dcitydb/3dcitydb/issues'
echo
echo '######################################################################################'

# List the existing data schemas ------------------------------------------------------
psql -d "$CITYDB" -f "QUERY_SCHEMA.sql"

#  Prompt for SCHEMANAME ------------------------------------------------------
PLACEHOLDER=citydb
SCHEMANAME=citydb2

echo 'Please enter the name of the data schema you want to create.'
read -p "(default SCHEMANAME=$SCHEMANAME): " var
SCHEMANAME=${var:-$SCHEMANAME}

DELETE_FILE_PATH=DELETE/DELETE.sql
TMP_DELETE_FILENAME=DELETE_TMP.sql 
TMP_DELETE_FILE_PATH=DELETE/$TMP_DELETE_FILENAME

#cp $DELETE_FILE_PATH $TMP_DELETE_FILE_PATH
sed 's/'$PLACEHOLDER'/'$SCHEMANAME'/g' $DELETE_FILE_PATH > $TMP_DELETE_FILE_PATH

# Run CREATE_SCHEMA.sql to create a new data schema
echo
echo "Connecting to the database \"$PGUSER@$PGHOST:$PGPORT/$CITYDB\" ..."
psql -d "$CITYDB" -f "CREATE_SCHEMA.sql" -v schemaname="$SCHEMANAME" -v tmp_delete_filename="$TMP_DELETE_FILENAME" 

rm -f $TMP_DELETE_FILE_PATH

echo
read -rsn1 -p 'Press ENTER to quit.'
echo
