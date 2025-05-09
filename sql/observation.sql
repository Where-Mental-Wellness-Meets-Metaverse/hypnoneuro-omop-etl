-- observation.sql
-- Transform selected MIMIC-III events into OMOP OBSERVATION table

SELECT
  l.row_id AS observation_id,
  l.subject_id AS person_id,
  l.hadm_id AS visit_occurrence_id,
  d.label AS observation_source_value,
  l.charttime AS observation_datetime,
  l.value AS value_as_string
FROM mimic3_demo.labevents l
JOIN mimic3_demo.d_labitems d ON l.itemid = d.itemid
WHERE l.valuenum IS NULL AND l.value IS NOT NULL;
