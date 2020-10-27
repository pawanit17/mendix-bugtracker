ALTER TABLE "mainmodule$user" ADD "userid" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('dc6c3a6b-3798-4f12-9932-e7f90c135ca2', 
'9f3000d7-766c-4af7-918a-1aad145fb309', 
'UserID', 
'userid', 
30, 
200, 
'', 
false);
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
 VALUES ('ce05291a-4604-4cfb-b9d9-79a25e950e7e', 
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
'ce05291a-4604-4cfb-b9d9-79a25e950e7e', 
'553ce811-fa53-3aad-87cb-592fa9e6e7e8');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201027 22:33:40';
