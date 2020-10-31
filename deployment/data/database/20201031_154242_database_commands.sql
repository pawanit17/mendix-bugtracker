ALTER TABLE "mainmodule$issue" DROP CONSTRAINT "uniq_mainmodule$issue_description";
ALTER TABLE "mainmodule$issue_user" DROP CONSTRAINT "uniq_mainmodule$issue_user_mainmodule$issueid";
DROP INDEX "idx_mainmodule$issue_user_mainmodule$user_mainmodule$issue";
ALTER TABLE "mainmodule$issue" RENAME TO "bugtracker$issue";
ALTER TABLE "mainmodule$issue_user" RENAME TO "bugtracker$issue_user";
ALTER TABLE "mainmodule$user" RENAME TO "bugtracker$user";
ALTER TABLE "bugtracker$issue" ADD CONSTRAINT "uniq_bugtracker$issue_description" UNIQUE ("description");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_mainmodule$issue_description';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'BugTracker.Issue', 
"table_name" = 'bugtracker$issue', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_bugtracker$issue_description', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'8068fe90-9a35-4a86-b7eb-e055073a318d');
ALTER TABLE "bugtracker$issue_user" ALTER COLUMN "mainmodule$userid" RENAME TO "bugtracker$userid";
ALTER TABLE "bugtracker$issue_user" ALTER COLUMN "mainmodule$issueid" RENAME TO "bugtracker$issueid";
CREATE INDEX "idx_bugtracker$issue_user_bugtracker$user_bugtracker$issue" ON "bugtracker$issue_user" ("bugtracker$userid" ASC,"bugtracker$issueid" ASC);
ALTER TABLE "bugtracker$issue_user" ADD CONSTRAINT "uniq_bugtracker$issue_user_bugtracker$issueid" UNIQUE ("bugtracker$issueid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_mainmodule$issue_user_mainmodule$issueid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_bugtracker$issue_user_bugtracker$issueid', 
'dcfa2f22-9e8c-427d-96b8-cdd7693c038e', 
'8d16c244-bc9f-3722-8b6f-3b5622ba1b9c');
UPDATE "mendixsystem$association"
 SET "association_name" = 'BugTracker.Issue_User', 
"table_name" = 'bugtracker$issue_user', 
"parent_entity_id" = '12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
"child_entity_id" = '9f3000d7-766c-4af7-918a-1aad145fb309', 
"parent_column_name" = 'bugtracker$issueid', 
"child_column_name" = 'bugtracker$userid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_bugtracker$issue_user_bugtracker$user_bugtracker$issue'
 WHERE "id" = 'dcfa2f22-9e8c-427d-96b8-cdd7693c038e';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'BugTracker.User', 
"table_name" = 'bugtracker$user', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '9f3000d7-766c-4af7-918a-1aad145fb309';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201031 15:42:42';
