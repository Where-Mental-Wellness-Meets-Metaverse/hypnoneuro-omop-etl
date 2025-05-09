# HypnoNeuro OMOP ETL

This repository contains SQL scripts and documentation to transform MIMIC-III clinical data into the **OMOP Common Data Model (CDM)** format, in support of the **HypnoNeuro** decentralized mental health platform.

---

## 🔍 Purpose

This ETL pipeline:
- Extracts structured data from the MIMIC-III database
- Transforms relevant patient data into OMOP-compliant tables
- Supports clinical modeling and standardization for research and interoperability

---

## 📦 Included Transformations

| OMOP Table            | Source Table (MIMIC-III)       | ETL Script                                           |
|-----------------------|---------------------------------|------------------------------------------------------|
| PERSON                | PATIENTS                        | /sql/transforms/sql/person.sql                      |
| CONDITION_OCCURRENCE  | DIAGNOSES_ICD, ADMISSIONS       | /sql/transforms/sql/condition_occurrence.sql        |
| VISIT_OCCURRENCE      | ADMISSIONS                      | /sql/transforms/sql/visit_occurrence.sql            |
| OBSERVATION           | NOTEEVENTS                      | /sql/transforms/sql/observation.sql                 |

---

## 🚀 How to Use (Google BigQuery)

1. Clone this repository locally:

   ```bash
   git clone https://github.com/Where-Mental-Wellness-Meets-Metaverse/hypnoneuro-omop-etl.git
   cd hypnoneuro-omop-etl
