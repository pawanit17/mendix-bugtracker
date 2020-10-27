ALTER TABLE "mainmodule$issue_user" DROP CONSTRAINT "uniq_mainmodule$issue_user_mainmodule$issueid";
DROP INDEX "idx_mainmodule$issue_user_mainmodule$user_mainmodule$issue";
ALTER TABLE "mainmodule$issue_user" RENAME TO "98bc22ab04cf4f53b5af99f79b9e54e7";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'ce05291a-4604-4cfb-b9d9-79a25e950e7e';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_mainmodule$issue_user_mainmodule$issueid';
CREATE TABLE "mainmodule$issue_user" (
	"mainmodule$issueid" BIGINT NOT NULL,
	"mainmodule$userid" BIGINT NOT NULL,
	PRIMARY KEY("mainmodule$issueid","mainmodule$userid"),
	CONSTRAINT "uniq_mainmodule$issue_user_mainmodule$issueid" UNIQUE ("mainmodule$issueid"));
CREATE INDEX "idx_mainmodule$issue_user_mainmodule$user_mainmodule$issue" ON "mainmodule$issue_user" ("mainmodule$userid" ASC,"mainmodule$issueid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('05511121-0a93-41ed-a9db-16a43c209d44', 
'MainModule.Issue_User', 
'mainmodule$issue_user', 
'12612556-1aa4-4b6a-b9eb-50a8a7a308a3', 
'9f3000d7-766c-4af7-918a-1aad145fb309', 
'mainmodule$issueid', 
'mainmodule$userid', 
'idx_mainmodule$issue_user_mainmodule$user_mainmodule$issue');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_mainmodule$issue_user_mainmodule$issueid', 
'05511121-0a93-41ed-a9db-16a43c209d44', 
'0662ccba-8e51-3bda-94e8-fac3ad8572f0');
DROP TABLE "98bc22ab04cf4f53b5af99f79b9e54e7";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201027 23:41:23';
