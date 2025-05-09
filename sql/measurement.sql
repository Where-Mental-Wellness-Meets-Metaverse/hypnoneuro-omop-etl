-- measurement.sql
-- Transform MIMIC-III lab events into OMOP MEASUREMENT table

SELECT
  l.row_id AS measurement_id,
  l.subject_id AS person_id,
  l.hadm_id AS visit_occurrence_id,
  d.itemid AS measurement_source_value,
  l.charttime AS measurement_datetime,
  l.valuenum AS value_as_number,
  l.valueuom AS unit_source_value
FROM mimic3_demo.labevents l
JOIN mimic3_demo.d_labitems d ON l.itemid = d.itemid;
