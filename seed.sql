USE employee_db;

INSERT INTO departments (name, department_code) VALUES
('ฝ่ายเทคโนโลยีสารสนเทศ', 'IT'),
('ฝ่ายทรัพยากรบุคคล', 'HR'),
('ฝ่ายการเงิน', 'FIN');

INSERT INTO positions (name, position_code) VALUES
('นักพัฒนาซอฟต์แวร์', 'DEV'),
('นักออกแบบ UX/UI', 'UX'),
('ผู้จัดการโครงการ', 'PM');

INSERT INTO employees
    (name, employee_code, email, department_id, position_id)
VALUES
    ('สมชาย ใจดี', 'EMP001', 'somchai@example.com', 1, 1),
    ('สมหญิง รักเรียน', 'EMP002', 'somying@example.com', 2, 2),
    ('วิชัย ตั้งใจ', 'EMP003', 'wichai@example.com', 3, 3);