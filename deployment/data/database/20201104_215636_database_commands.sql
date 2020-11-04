ALTER TABLE "bugtracker$issue" ADD "comments" VARCHAR_IGNORECASE(500) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('f307fea0-492b-425f-afa7-263fc2c50744', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'Comments', 
'comments', 
30, 
500, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201104 21:56:36';
