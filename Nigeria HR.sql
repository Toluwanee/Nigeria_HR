CREATE TABLE employment_type (
  part_time_id SERIAL PRIMARY KEY,
  full_time_id varchar(255) DEFAULT NULL,
);

INSERT INTO employment_type 
(employment_type) 
VALUES


CREATE TABLE Employee (
  id SERIAL PRIMARY KEY,
  name varchar(255) DEFAULT NULL,
);



INSERT INTO Employee
(id, name)
VALUES
('1', 'Temitope'),
('2', 'Tolu')
('3', 'Favour')

CREATE TABLE Employee_2 (
  "id" integer,
  "name" integer,
);

CREATE TABLE Employee_3 (
  "id" integer,
  "name" integer,
);

CREATE TABLE job_position (
  position id SERIAL PRIMARY KEY,
  role varchar(255) DEFAULT NULL,
);

INSERT INTO job_position
(role)
VALUES
('Cofounder'),
('Engineer'),
('Scientist')


CREATE TABLE department (
  id SERIAL PRIMARY KEY,
  name varchar(255) DEFAULT NULL
);

INSERT INTO department
(name)
VALUES
('Managerial'),
('Engineering'),
('Health')


-- CREATE TABLE payroll (
--   "id" SERIAL PRIMARY KEY,
--   "part_time" string,
--   "full_time" string,
-- );
-- VALUES
-- ()



CREATE TABLE leave_request (
  "id" SERIAL PRIMARY KEY,
  request_1 varchar(255) DEFAULT NULL,
  request_2 varchar(255) DEFAULT NULL,
);

INSERT INTO leave_request
(request_1, request_2)
VALUES
('sick leave', 'paid leave'),
('paternity leave', 'maternity leave'),
('training leave', 'travel leave');


CREATE TABLE training_session (
  name varchar(255) DEFAULT NULL,
  training_1 varchar(255) DEFAULT NULL,
  training_2 varchar(255) DEFAULT NULL,
);

INSERT INTO training_session
(training_1, training_2)
VALUES
('security', 'education'),
('Industrial', 'unlearning'),
('training leave', 'travel leave');

CREATE TABLE attendance (
  "id" int,
  "attendance1" int,
  "attendance2" int,
);

ALTER TABLE "Employee" ADD FOREIGN KEY ("id") REFERENCES "employment_type" ("part_time_id");

ALTER TABLE "Employee" ADD FOREIGN KEY ("id") REFERENCES "employment_type" ("full_time_id");

ALTER TABLE "department" ADD FOREIGN KEY ("id") REFERENCES "Employee" ("id");

ALTER TABLE "job_position" ADD FOREIGN KEY ("id") REFERENCES "Employee" ("id");

ALTER TABLE "payroll" ADD FOREIGN KEY ("part_time") REFERENCES "Employee" ("id");

ALTER TABLE "payroll" ADD FOREIGN KEY ("full_time") REFERENCES "Employee" ("id");

ALTER TABLE "leave_request" ADD FOREIGN KEY ("id") REFERENCES "Employee" ("id");

ALTER TABLE "Employee" ADD FOREIGN KEY ("id") REFERENCES "training_session" ("name");

ALTER TABLE "Employee_2" ADD FOREIGN KEY ("id") REFERENCES "training_session" ("name");

ALTER TABLE "Employee_3" ADD FOREIGN KEY ("id") REFERENCES "training_session" ("name");

ALTER TABLE "leave_request" ADD FOREIGN KEY ("id") REFERENCES "Employee_2" ("id");

ALTER TABLE "leave_request" ADD FOREIGN KEY ("id") REFERENCES "Employee_3" ("id");

ALTER TABLE "attendance" ADD FOREIGN KEY ("id") REFERENCES "Employee" ("id");
