﻿drop database btl_java_quanlynhadat;
CREATE DATABASE btl_java_quanlynhadat
GO
USE btl_java_quanlynhadat
GO

CREATE TABLE ROLES (
  role_id int IDENTITY(1,1) PRIMARY KEY,
  name nvarchar(20) NOT NULL
) 

GO
CREATE TABLE USERS (
  id int IDENTITY(1,1) NOT NULL,
  fullname nvarchar(30) NOT NULL,
  username nvarchar(30) NOT NULL,
  password nvarchar(30) NOT NULL,
  role_id int NOT NULL,
  status bit,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES ROLES(role_id)
) 
GO
CREATE TABLE LAND_TRANSACTIONS (
  t_id int IDENTITY(1,1) NOT NULL,
  t_date DATE NOT NULL,
  t_price FLOAT NOT NULL,
  t_type VARCHAR(1) NOT NULL,
  t_area FLOAT NOT NULL,
  id int NOT NULL,
  PRIMARY KEY (T_id),
  FOREIGN KEY (id) REFERENCES USERS(id),
  CHECK (t_type='A' OR t_type='B' OR t_type='C')
) 
GO
CREATE TABLE HOME_TRANSACTIONS (
  t_id int IDENTITY(1,1) NOT NULL,
  t_date DATE NOT NULL,
  t_price FLOAT NOT NULL,
  t_type NVARCHAR(12) NOT NULL,
  t_area FLOAT NOT NULL,
  id int NOT NULL,
  PRIMARY KEY (T_id),
  FOREIGN KEY (id) REFERENCES USERS(id),
  CHECK (t_type=N'cao cấp' OR t_type=N'thường')
)

GO
INSERT INTO ROLES ( name) VALUES
(N'Trưởng phòng'),
(N'Nhân viên');

GO
INSERT INTO users ( fullname, username, password, role_id, status ) VALUES
( N'Admin', 'admin', '123', 1, 1),
( N'Thu Hà', 'haniekid', '123', 2,1),
( N'Đức Cảnh', 'duccanh', '12345678', 2,1),
( N'Ngô Tấn', 'ngotan', '12345678', 2,1),


GO
INSERT INTO LAND_TRANSACTIONS (t_date, t_price, t_type, t_area, id) VALUES 
( GETDATE(), 99, 'B', 1000, 4),
( '2024-06-02', 199, 'A', 500, 3),
( '2023-06-03', 89, 'C', 1000, 2),
( '2024-03-02', 299, 'A', 500, 3),
( '2023-03-04', 69, 'C', 1000, 2),
( '2024-04-02', 199, 'A', 500, 2),
( '2022-05-03', 89, 'C', 1000, 2),
( '2024-01-02', 299, 'A', 500, 4),
( '2023-02-04', 69, 'C', 1000, 4),
( '2024-06-02', 299, 'A', 500, 3),
( '2024-06-04', 69, 'C', 1000, 2)

GO
INSERT INTO HOME_TRANSACTIONS (t_date, t_price, t_type, t_area, id) VALUES 
( '2024-06-01', 99, N'cao cấp', 1000, 2),
( '2024-06-01', 69, N'thường', 500, 2),
( '2024-02-01', 69, N'thường', 1000, 3),
( '2024-03-01', 99, N'cao cấp', 1000, 3),
( '2024-04-01', 99, N'cao cấp', 1000, 4),
( '2024-05-01', 99, N'cao cấp', 1000, 2),
( '2024-01-01', 69, N'thường', 500, 4),
( '2023-06-01', 99, N'cao cấp', 1000, 2),
( '2023-08-01', 69, N'thường', 500, 2),
( '2022-08-01', 69, N'thường', 1000, 3),
( '2023-09-01', 99, N'cao cấp', 1000, 3),
( '2024-06-01', 99, N'cao cấp', 1000, 2)

SELECT * FROM USERS
select * from LAND_TRANSACTIONS
select * from HOME_TRANSACTIONS
INSERT INTO users ( fullname, username, password, role_id, status ) VALUES
( N'NV1', 'nhanvien', '1234', 2, 1);

UPDATE HOME_TRANSACTIONS SET t_price = 30, t_type = N'cao cấp', t_area = 3000  WHERE t_id = 2 
       INSERT INTO USERS ( fullname, username, password, role_id,status) VALUES( 'a' , 'b' , '123' , 2,1);