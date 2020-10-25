ALTER TABLE "mainmodule$issue" ADD "state" VARCHAR_IGNORECASE(11) NULL;
UPDATE "mainmodule$issue"
 SET "state" = 'Open';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'IssueType', 
"column_name" = 'issuetype', 
"type" = 40, 
"length" = 11, 
"default_value" = 'Defect', 
"is_auto_number" = false
 WHERE "id" = '8af9c404-7c1d-42dd-a163-293433a5a7f5';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('d2a4b04c-0931-4e07-ba44-8445c503c50d', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'State', 
'state', 
40, 
11, 
'Open', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201025 23:19:17';
