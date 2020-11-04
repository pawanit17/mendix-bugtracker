ALTER TABLE "bugtracker$issue" ALTER COLUMN "details" RENAME TO "description";
ALTER TABLE "bugtracker$issue" ALTER COLUMN "shortdescription" RENAME TO "shortsummary";
ALTER TABLE "bugtracker$issue" ADD "priority" VARCHAR_IGNORECASE(8) NULL;
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'ShortSummary', 
"column_name" = 'shortsummary', 
"type" = 30, 
"length" = 100, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '3e65d208-ae7b-41de-9a73-1876562fab21';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"attribute_name" = 'Description', 
"column_name" = 'description', 
"type" = 30, 
"length" = 500, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '8068fe90-9a35-4a86-b7eb-e055073a318d';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('c8d611f4-d6b1-4932-a1f2-f81e5a782aac', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'Priority', 
'priority', 
40, 
8, 
'', 
false);
CREATE TABLE "bugtracker$project" (
	"id" BIGINT NOT NULL,
	"abbreviation" VARCHAR_IGNORECASE(200) NULL,
	"description" VARCHAR_IGNORECASE(200) NULL,
	"sponsor" VARCHAR_IGNORECASE(200) NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('1045f40b-f648-4a07-9313-10b82dda0ebb', 
'BugTracker.Project', 
'bugtracker$project', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('4a7ad249-1715-4613-a86b-bb97dc95f686', 
'1045f40b-f648-4a07-9313-10b82dda0ebb', 
'Abbreviation', 
'abbreviation', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('60020e5a-fa38-4809-a535-490f87972006', 
'1045f40b-f648-4a07-9313-10b82dda0ebb', 
'Description', 
'description', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('457281f8-1275-4060-8450-5bd0079d1102', 
'1045f40b-f648-4a07-9313-10b82dda0ebb', 
'Sponsor', 
'sponsor', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('81c32edd-d081-4ef2-967e-000519c6b43b', 
'1045f40b-f648-4a07-9313-10b82dda0ebb', 
'Name', 
'name', 
30, 
200, 
'', 
false);
CREATE TABLE "bugtracker$project_user" (
	"bugtracker$projectid" BIGINT NOT NULL,
	"bugtracker$userid" BIGINT NOT NULL,
	PRIMARY KEY("bugtracker$projectid","bugtracker$userid"));
CREATE INDEX "idx_bugtracker$project_user_bugtracker$user_bugtracker$project" ON "bugtracker$project_user" ("bugtracker$userid" ASC,"bugtracker$projectid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('999a0e85-a517-4382-9d4f-eba68a5bf1d9', 
'BugTracker.Project_User', 
'bugtracker$project_user', 
'1045f40b-f648-4a07-9313-10b82dda0ebb', 
'9f3000d7-766c-4af7-918a-1aad145fb309', 
'bugtracker$projectid', 
'bugtracker$userid', 
'idx_bugtracker$project_user_bugtracker$user_bugtracker$project');
CREATE TABLE "bugtracker$issue_project" (
	"bugtracker$issueid" BIGINT NOT NULL,
	"bugtracker$projectid" BIGINT NOT NULL,
	PRIMARY KEY("bugtracker$issueid","bugtracker$projectid"),
	CONSTRAINT "uniq_bugtracker$issue_project_bugtracker$issueid" UNIQUE ("bugtracker$issueid"));
CREATE INDEX "idx_bugtracker$issue_project_bugtracker$project_bugtracker$issue" ON "bugtracker$issue_project" ("bugtracker$projectid" ASC,"bugtracker$issueid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('9ace2df6-1811-4f26-bc25-405c5a7998f1', 
'BugTracker.Issue_Project', 
'bugtracker$issue_project', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'1045f40b-f648-4a07-9313-10b82dda0ebb', 
'bugtracker$issueid', 
'bugtracker$projectid', 
'idx_bugtracker$issue_project_bugtracker$project_bugtracker$issue');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_bugtracker$issue_project_bugtracker$issueid', 
'9ace2df6-1811-4f26-bc25-405c5a7998f1', 
'4737befc-b576-39bc-a33f-a8b5d0a56579');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201104 20:17:10';
