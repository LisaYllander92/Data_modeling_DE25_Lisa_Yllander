CREATE TABLE IF NOT EXISTS Hospital (
    hospital_id INTEGER PRIMARY KEY,
    hospital_name VARCHAR(100),
    adress VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Department(
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Doctor(
    doctor_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS HospitalDepartment(
    H_Dep_id INTEGER PRIMARY KEY,
    hospital_id INTEGER REFERENCES Hospital(hospital_id),
    department_id INTEGER REFERENCES Department(department_id)
);


CREATE TABLE IF NOT EXISTS DepartmentDoctor(
    D_Doc_id INTEGER PRIMARY KEY,
    department_id INTEGER REFERENCES Department(department_id),
    doctor_id INTEGER REFERENCES Doctor(doctor_id)
);


CREATE TABLE IF NOT EXISTS HospitalDoctor(
    H_Doc_id INTEGER PRIMARY KEY,
    hospital_id INTEGER REFERENCES Hospital(hospital_id),
    doctor_id INTEGER REFERENCES Doctor(doctor_id)
);

INSERT INTO Hospital (hospital_id, hospital_name, adress)
VALUES
(101, 'SÖS', 'Ringvägen 55'),
(102, 'Karolinska', 'Blabla 65');

INSERT INTO Department(department_id, department_name)
VALUES
(01, 'Neurologi'),
(02, 'Gynekologi');

INSERT INTO Doctor(doctor_id, first_name, last_name)
VALUES
(1, 'Hans', 'Hansson'),
(2, 'Berit', 'Bengtsson');

-- Can you satisfy that a doctor can work at several departments and several hospitals?

INSERT INTO HospitalDoctor (H_Doc_id, hospital_id, doctor_id)
VALUES
(1001, 101, 1);

INSERT INTO HospitalDoctor (H_Doc_id, hospital_id, doctor_id)
VALUES
(1002, 102, 1);
