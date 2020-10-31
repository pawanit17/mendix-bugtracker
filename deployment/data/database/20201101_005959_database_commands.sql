ALTER TABLE "bugtracker$issue" DROP CONSTRAINT "uniq_bugtracker$issue_description";
ALTER TABLE "bugtracker$issue" ALTER COLUMN "summary" RENAME TO "741ed4620480432f816fc6ac9af11339";
ALTER TABLE "bugtracker$issue" ALTER COLUMN "description" RENAME TO "301c3d1317b746d3a5e7be16a048b8ed";
ALTER TABLE "bugtracker$issue" ALTER COLUMN "741ed4620480432f816fc6ac9af11339" RENAME TO "description";
ALTER TABLE "bugtracker$issue" ALTER COLUMN "301c3d1317b746d3a5e7be16a048b8ed" RENAME TO "summary";
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_bugtracker$issue_description';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'Description', 
"column_name" = 'description', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '3e65d208-ae7b-41de-9a73-1876562fab21';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'Summary', 
"column_name" = 'summary', 
"type" = 30, 
"length" = 500, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '8068fe90-9a35-4a86-b7eb-e055073a318d';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201101 00:59:59';
