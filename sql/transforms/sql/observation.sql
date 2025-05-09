SELECT
  subject_id AS person_id,
  chartdate AS observation_date,
  category AS observation_type,
  description AS observation_source_value
FROM `valued-aleph-459311-m0.mimic_demo.noteevents`
WHERE description IS NOT NULL
LIMIT 1000;
