# Hospital Management Model

## Patient
- Patient_id (Primary Key)
- Patient_name 
- Age
- Blood_group
- Gender
- DOB

## Appointment
- Appointment_id (Primary key)
- Patient_id (Foreign key referencing Patient)
- Appointment_time
- Appointment_date
- Doctor_name

## Pharmacy
- drug_id (Primary Key)
- Patient_id (Foreign key referencing Patient)
- Appointment_id (Foreign key referencing appointment)
- drug_name

## Billing
- Bill_no (primary key)
- Patient_id (foreign key referring patient)
- Appointment_id (Foreign key referring appointment)
- Amount
- Billing_date

### Relationships
- 1:M : one patient can have different appointment id during each visit
- 1:1 : one bill_no can have only one appointment_id
