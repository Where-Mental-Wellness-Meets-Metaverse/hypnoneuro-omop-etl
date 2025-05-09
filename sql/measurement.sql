SELECT
  subject_id AS person_id,
  charttime AS measurement_datetime,
  itemid AS measurement_source_value,
  valuenum AS value_as_number,
  valueuom AS unit_source_value
FROM `valued-aleph-459311-m0.mimic_demo.labevents`
WHERE valuenum IS NOT NULL
LIMIT 1000;
