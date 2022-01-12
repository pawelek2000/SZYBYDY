@echo off
SQLCMD -S (LocalDB)\MSSQLLocalDB -E -i sql_query\create_database.sql

SQLCMD -S (LocalDB)\MSSQLLocalDB -E -i sql_query\create_identity.sql
SQLCMD -S (LocalDB)\MSSQLLocalDB -E -i sql_query\create_tables.sql

SQLCMD -S (LocalDB)\MSSQLLocalDB -E -i sql_query\insert_identity.sql
SQLCMD -S (LocalDB)\MSSQLLocalDB -E -i sql_query\insert_values.sql

pause