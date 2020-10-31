ALTER TABLE "bugtracker$issue" DROP COLUMN "issueid";
CREATE SEQUENCE "bugtracker$issue_issueid_mxseq" AS BIGINT START WITH 1;
ALTER TABLE "bugtracker$issue" ADD "issueid" BIGINT NULL;
UPDATE "bugtracker$issue"
 SET "issueid" = NEXT VALUE FOR "bugtracker$issue_issueid_mxseq";
INSERT INTO "mendixsystem$sequence" ("attribute_id", 
"name", 
"start_value", 
"current_value")
 VALUES ('a9174de5-9ce4-41d8-9ed1-cba6391147f9', 
'bugtracker$issue_issueid_mxseq', 
1, 
8);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'IssueID', 
"column_name" = 'issueid', 
"type" = 0, 
"length" = 0, 
"default_value" = '1', 
"is_auto_number" = true
 WHERE "id" = 'a9174de5-9ce4-41d8-9ed1-cba6391147f9';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201101 00:42:17';
