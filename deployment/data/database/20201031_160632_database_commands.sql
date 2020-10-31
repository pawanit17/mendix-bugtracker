ALTER TABLE "bugtracker$issue_user" DROP CONSTRAINT "uniq_bugtracker$issue_user_bugtracker$issueid";
DROP INDEX "idx_bugtracker$issue_user_bugtracker$user_bugtracker$issue";
ALTER TABLE "bugtracker$issue_user" RENAME TO "bugtracker$issue_user_assignedto";
CREATE INDEX "idx_bugtracker$issue_user_assignedto_bugtracker$user_bugtracker$issue" ON "bugtracker$issue_user_assignedto" ("bugtracker$userid" ASC,"bugtracker$issueid" ASC);
ALTER TABLE "bugtracker$issue_user_assignedto" ADD CONSTRAINT "uniq_bugtracker$issue_user_assignedto_bugtracker$issueid" UNIQUE ("bugtracker$issueid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_bugtracker$issue_user_bugtracker$issueid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_bugtracker$issue_user_assignedto_bugtracker$issueid', 
'dcfa2f22-9e8c-427d-96b8-cdd7693c038e', 
'8d16c244-bc9f-3722-8b6f-3b5622ba1b9c');
UPDATE "mendixsystem$association"
 SET "association_name" = 'BugTracker.Issue_User_AssignedTo', 
"table_name" = 'bugtracker$issue_user_assignedto', 
"parent_entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"child_entity_id" = '9f3000d7-766c-4af7-918a-1aad145fb309', 
"parent_column_name" = 'bugtracker$issueid', 
"child_column_name" = 'bugtracker$userid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_bugtracker$issue_user_assignedto_bugtracker$user_bugtracker$issue'
 WHERE "id" = 'dcfa2f22-9e8c-427d-96b8-cdd7693c038e';
CREATE TABLE "bugtracker$issue_user_reportedby" (
	"bugtracker$issueid" BIGINT NOT NULL,
	"bugtracker$userid" BIGINT NOT NULL,
	PRIMARY KEY("bugtracker$issueid","bugtracker$userid"),
	CONSTRAINT "uniq_bugtracker$issue_user_reportedby_bugtracker$issueid" UNIQUE ("bugtracker$issueid"));
CREATE INDEX "idx_bugtracker$issue_user_reportedby_bugtracker$user_bugtracker$issue" ON "bugtracker$issue_user_reportedby" ("bugtracker$userid" ASC,"bugtracker$issueid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('6324f234-3248-4086-8df5-15900bf60d2f', 
'BugTracker.Issue_User_ReportedBy', 
'bugtracker$issue_user_reportedby', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'9f3000d7-766c-4af7-918a-1aad145fb309', 
'bugtracker$issueid', 
'bugtracker$userid', 
'idx_bugtracker$issue_user_reportedby_bugtracker$user_bugtracker$issue');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_bugtracker$issue_user_reportedby_bugtracker$issueid', 
'6324f234-3248-4086-8df5-15900bf60d2f', 
'573ade7b-5323-3ade-9676-fe67f796ca2a');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201031 16:06:32';
