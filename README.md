# HypnoNeuro OMOP ETL Pipeline

This project contains the Extract-Transform-Load (ETL) pipeline to convert MIMIC-III clinical database data into OMOP Common Data Model format for use with the HypnoNeuro platform.

---

## Features

- Data extraction from MIMIC-III  
- Data transformation into OMOP-compliant tables  
- SQL scripts and Python code for data loading  
- Support for healthcare analytics and research  

---

## Prerequisites

- Python 3.8+  
- Required Python packages listed in `requirements.txt`  
- Access to MIMIC-III dataset (ensure you comply with their data use agreement)  

---

## Installation

1. Create and activate a Python virtual environment:

```bash
python3 -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
python app.py

Data Disclaimer
MIMIC-III data is provided under a data use agreement. This project assumes you have appropriate access and comply with all terms.

Contribution
This project is proprietary to Dr. Meg Montañez-Davenport. Unauthorized copying or distribution is strictly prohibited.

© 2025 Dr. Meg Montañez-Davenport. All rights reserved.
Unauthorized copying or distribution is strictly prohibited.
