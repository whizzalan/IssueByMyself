# example trinity pulbic tables
tbl_lst=$(psql -qtAX -U trinity -c "SELECT tablename FROM pg_catalog.pg_tables WHERE schemaname = 'public';")
for tbl in $tbl_lst;
do 
  pg_dump --no-security-labels --no-synchronized-snapshots --no-tablespaces -U trinity -s trinity -t $tbl > $tbl.sql;
done
