ALTER TABLE "mainmodule$issue_user" DROP CONSTRAINT "uniq_mainmodule$issue_user_mainmodule$userid";
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_mainmodule$issue_user_mainmodule$userid';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201031 14:48:07';
