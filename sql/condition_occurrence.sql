-- condition_occurrence.sql
-- Transform MIMIC-III data into OMOP CONDITION_OCCURRENCE table

WITH person_map AS (
    SELECT DISTINCT subject_id AS person_id
    FROM mimic3_demo.patients
),
visit_map AS (
    SELECT DISTINCT hadm_id AS visit_occurrence_id
    FROM mimic3_demo.admissions
),
condition_source AS (
    SELECT
        d.subject_id AS person_id,
        d.hadm_id AS visit_occurrence_id,
        d.icd9_code AS condition_source_value
    FROM mimic3_demo.diagnoses_icd d
)

SELECT
    cs.person_id,
    cs.visit_occurrence_id,
    cs.condition_source_value
FROM condition_source cs
JOIN person_map p ON cs.person_id = p.person_id
JOIN visit_map v ON cs.visit_occurrence_id = v.visit_occurrence_id;
