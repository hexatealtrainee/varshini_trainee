# Hospital Management Model

## Patient Table

| Column Name | Key Type |
| :--- | :--- |
| Patient_id | Primary Key |
| Patient_name | |
| Age | |
| Blood_group | |
| Gender | |
| DOB | |

## Appointment Table

| Column Name | Key Type |
| :--- | :--- |
| Appointment_id | Primary Key |
| Patient_id | Foreign Key (referencing Patient) |
| Appointment_time | |
| Appointment_date | |
| Doctor_name | |

## Pharmacy Table

| Column Name | Key Type |
| :--- | :--- |
| drug_id | Primary Key |
| Patient_id | Foreign Key (referencing Patient) |
| Appointment_id | Foreign Key (referencing Appointment) |
| drug_name | |

## Billing Table

| Column Name | Key Type |
| :--- | :--- |
| Bill_no | Primary Key |
| Patient_id | Foreign Key (referencing Patient) |
| Appointment_id | Foreign Key (referencing Appointment) |
| Amount | |
| Billing_date | |

## Relationships
- 1:M (One-to-Many): One patient can have different appointment IDs during each visit.
- 1:1 (One-to-One): One bill_no can have only one appointment_id.
