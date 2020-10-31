ALTER TABLE "mainmodule$issue_user" ADD CONSTRAINT "uniq_mainmodule$issue_user_mainmodule$userid" UNIQUE ("mainmodule$userid");
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_mainmodule$issue_user_mainmodule$userid', 
'05511121-0a93-41ed-a9db-16a43c209d44', 
'ad500151-34ef-3567-9e66-0f7e9aed8f5d');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201028 00:48:09';
