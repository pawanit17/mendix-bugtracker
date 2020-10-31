ALTER TABLE "bugtracker$issue" ADD "createddate" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('cc2b140f-a95b-31ac-ba83-9221b981910b', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201101 00:46:29';
