ALTER TABLE "bugtracker$project_user" ADD CONSTRAINT "uniq_bugtracker$project_user_bugtracker$projectid" UNIQUE ("bugtracker$projectid");
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_bugtracker$project_user_bugtracker$projectid', 
'999a0e85-a517-4382-9d4f-eba68a5bf1d9', 
'd38d965f-4b56-3240-9636-eb77af088fac');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20201104 23:46:45';
