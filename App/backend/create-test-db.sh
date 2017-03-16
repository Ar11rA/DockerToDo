set -e
PG_OUTPUT=$(echo '\dt' | psql -h postgres -U postgres)
echo ************
echo "$PG_OUTPUT"
echo ************
if [ "$PG_OUTPUT" == "No relations found." ]; then
  psql -U postgres -h postgres -d serverToDo -f /tmp/taskdata.sql
fi 