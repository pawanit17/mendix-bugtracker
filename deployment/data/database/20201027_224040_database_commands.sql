ALTER TABLE "mainmodule$issue" ADD CONSTRAINT "uniq_mainmodule$issue_description" UNIQUE ("description");
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_mainmodule$issue_description', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'8068fe90-9a35-4a86-b7eb-e055073a318d');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201027 22:40:40';
