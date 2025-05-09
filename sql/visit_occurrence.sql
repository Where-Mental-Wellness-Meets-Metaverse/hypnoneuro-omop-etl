-- visit_occurrence.sql
-- Transform MIMIC-III admissions data into OMOP VISIT_OCCURRENCE table

SELECT
  hadm_id AS visit_occurrence_id,
  subject_id AS person_id,
  'Inpatient Visit' AS visit_source_value,
  admittime AS visit_start_datetime,
  dischtime AS visit_end_datetime
FROM mimic3_demo.admissions;
