ALTER TABLE "bugtracker$project" DROP COLUMN "sponsor";
ALTER TABLE "bugtracker$project" ALTER COLUMN "description" RENAME TO "overview";
ALTER TABLE "bugtracker$project" ADD "department" VARCHAR_IGNORECASE(17) NULL;
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '1045f40b-f648-4a07-9313-10b82dda0ebb', 
"attribute_name" = 'Department', 
"column_name" = 'department', 
"type" = 40, 
"length" = 17, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '457281f8-1275-4060-8450-5bd0079d1102';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '1045f40b-f648-4a07-9313-10b82dda0ebb', 
"attribute_name" = 'Overview', 
"column_name" = 'overview', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '60020e5a-fa38-4809-a535-490f87972006';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201104 22:27:59';
