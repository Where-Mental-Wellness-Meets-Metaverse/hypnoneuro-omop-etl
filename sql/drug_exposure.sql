-- drug_exposure.sql
-- Transform MIMIC-III prescriptions into OMOP DRUG_EXPOSURE table

SELECT
  row_id AS drug_exposure_id,
  subject_id AS person_id,
  hadm_id AS visit_occurrence_id,
  drug AS drug_source_value,
  startdate AS drug_exposure_start_date,
  enddate AS drug_exposure_end_date
FROM mimic3_demo.prescriptions;
