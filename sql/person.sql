SELECT  
  subject_id AS person_id,  
  CASE  
    WHEN gender = 'M' THEN 'M'  
    WHEN gender = 'F' THEN 'F'  
    ELSE 'Unknown'  
  END AS gender_source_value,  
  EXTRACT(YEAR FROM dob) AS year_of_birth,  
  EXTRACT(MONTH FROM dob) AS month_of_birth,  
  EXTRACT(DAY FROM dob) AS day_of_birth,  
  NULL AS race_source_value  
FROM `valued-aleph-459311-m0.mimic_demo.patients`;
