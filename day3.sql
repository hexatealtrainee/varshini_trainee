--1. Patient details who have O-ve blood group in the age group between 20 and 35
SELECT * from patient_registration 
where blood_group ='O-'and age BETWEEN 20 and 35

  
--2.Number of patients in each gender under 'Care Health' insurance
select gender,count(*) as CareHealth_Count 
from patient_registration  where insurance_provider ='Care Health' 
group by gender

  
--3.Patients over 30 years old but with no insurance
select first_name,last_name, age,city,insurance_provider  
from patient_registration 
where insurance_provider ='None' and age>30

  
--4.Patients with no insurance and in emergncy department in ascendig order of blood group
select patient_id,first_name,last_name,blood_group,department,insurance_provider 
from patient_registration 
where department='Emergency'AND insurance_provider ='None' 
order by blood_group 

  
--5.Patients who are registered in 2024 in either ENT or General Medicine in ascending order of department (Patients in ENT followed by General Medicine)
select * from patient_registration 
where registration_date like '2024%'
AND (department='ENT' OR department= 'General Medicine') order by department 

  
--6.Number of patients in 'Emergency' department in each state
select state, count(*) as Emergency_Count  
from patient_registration where department ='Emergency' 
group by state order by Emergency_Count

  
--7.patients frm Coimbatore and bangalore,Mysore under starhealth by the ascending order of their patient_id
select * from patient_registration 
where city in ('Coimbatore','Bengaluru','Mysuru') and insurance_provider='Star Health' 
order by patient_id

  
--8.Female patients in 'Dermatology' department in descending order of their ages
select * from patient_registration 
where gender='Female' and department='Dermatology' 
order by age DESC

  
--9.patients admitted in cardialogy and pediatrics in ascending order of registration date
select * from patient_registration 
where (department ='Cardiology'or department='Pediatrics')and registration_type='Cash'
order by registration_date

  
--10-no of patients in each city have no insurance and in emergency department in descending ordr of the count
select city,count(*) as Emergency_No_Insurance 
from patient_registration where department='Emergency' and insurance_provider='None'  
group by city order by Emergency_No_Insurance DESC