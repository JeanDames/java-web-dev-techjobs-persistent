## Part 1: Test it with SQL
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "job"
AND TABLE_SCHEMA = "techjobs";

## Part 2: Test it with SQL
SELECT name
FROM employer
WHERE location LIKE "%St%Louis%"
OR location LIKE "%Saint%Louis%";

## Part 3: Test it with SQL
DROP TABLE job_skills;
DROP TABLE job;

## Part 4: Test it with SQL
SELECT name, description
FROM skill
WHERE skill.id IN (SELECT skills_id
					FROM job_skills
                    WHERE skills_id IS NOT NULL)
ORDER BY name ASC;