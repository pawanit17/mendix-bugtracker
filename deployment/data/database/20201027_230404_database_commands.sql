ALTER TABLE "mainmodule$user" ADD CONSTRAINT "uniq_mainmodule$user_userid" UNIQUE ("userid");
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_mainmodule$user_userid', 
'9f3000d7-766c-4af7-918a-1aad145fb309', 
'dc6c3a6b-3798-4f12-9932-e7f90c135ca2');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201027 23:04:04';
