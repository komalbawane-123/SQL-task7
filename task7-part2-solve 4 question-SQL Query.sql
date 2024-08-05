---create 4 question on your data like above and solve--

select * from hospital

select * from patient

--How to find the list of all patients and their associated hospital names

select p.patient_name, p.patient_id, h.hospital_name
from patient p
join hospital h ON p.hospital_id = h.hospital_id

--How to find the number of patient in each hospital

select h.hospital_name, count(p.patient_id) AS NumberOfPatient
from hospital h
left join patient p ON h.hospital_id = p.hospital_id
group by h.hospital_name

--How to retrieve all patient age is greater than 30

select patient_name, patient_id, age
from patient
where age > 30

--How to find the hospital with the longest phone number

select hospital_name, phone_number
from hospital
order by phone_number DESC
limit 1

