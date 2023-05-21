create table employee
(
    empId    int auto_increment
        primary key,
    empName  varchar(20) not null,
    empAge   int         not null,
    empBtd   date        not null,
    empSex   int         not null,
    isDelete int         not null
);

INSERT INTO gp1.employee (empId, empName, empAge, empBtd, empSex, isDelete) VALUES (1, '强哥', 22, '1990-09-09', 1, 1);
INSERT INTO gp1.employee (empId, empName, empAge, empBtd, empSex, isDelete) VALUES (2, '超人', 30, '1980-09-09', 1, 1);
INSERT INTO gp1.employee (empId, empName, empAge, empBtd, empSex, isDelete) VALUES (3, '梅林', 40, '1970-09-09', 1, 1);
INSERT INTO gp1.employee (empId, empName, empAge, empBtd, empSex, isDelete) VALUES (4, '东方', 35, '1985-09-09', 1, 1);