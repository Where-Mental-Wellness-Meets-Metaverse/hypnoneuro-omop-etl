SELECT
  subject_id AS person_id,
  startdate AS drug_exposure_start_date,
  drug AS drug_source_value,
  ndc AS drug_source_concept_id
FROM `valued-aleph-459311-m0.mimic_demo.prescriptions`
WHERE drug IS NOT NULL
LIMIT 1000;

