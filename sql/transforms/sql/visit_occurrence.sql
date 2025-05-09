SELECT
  subject_id AS person_id,
  hadm_id AS visit_occurrence_id,
  admittime AS visit_start_datetime,
  dischtime AS visit_end_datetime,
  admission_type AS visit_source_value
FROM `valued-aleph-459311-m0.mimic_demo.admissions`
WHERE hadm_id IS NOT NULL;
