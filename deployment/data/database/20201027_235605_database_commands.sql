ALTER TABLE "mainmodule$user" DROP CONSTRAINT "uniq_mainmodule$user_userid";
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_mainmodule$user_userid';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201027 23:56:05';
