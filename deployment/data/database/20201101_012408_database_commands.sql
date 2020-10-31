ALTER TABLE "bugtracker$issue" ALTER COLUMN "description" RENAME TO "shortdescription";
ALTER TABLE "bugtracker$issue" ALTER COLUMN "summary" RENAME TO "details";
UPDATE "bugtracker$issue"
 SET "shortdescription" = SUBSTRING("shortdescription" FROM 1 FOR 100);
ALTER TABLE "bugtracker$issue" ALTER COLUMN "shortdescription" SET DATA TYPE VARCHAR_IGNORECASE(100);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'Details', 
"column_name" = 'details', 
"type" = 30, 
"length" = 500, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '8068fe90-9a35-4a86-b7eb-e055073a318d';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'ShortDescription', 
"column_name" = 'shortdescription', 
"type" = 30, 
"length" = 100, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '3e65d208-ae7b-41de-9a73-1876562fab21';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201101 01:24:08';
