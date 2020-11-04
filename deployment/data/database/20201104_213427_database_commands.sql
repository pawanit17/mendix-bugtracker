ALTER TABLE "bugtracker$issue" ADD "_isnew" BOOLEAN NULL;
UPDATE "bugtracker$issue"
 SET "_isnew" = true;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('11e609cf-9212-4b76-a3de-b0cf028517e1', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'_IsNew', 
'_isnew', 
10, 
0, 
'true', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201104 21:34:27';
