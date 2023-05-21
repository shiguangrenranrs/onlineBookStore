create table sysAdmin
(
    adminId   int auto_increment
        primary key,
    adminName varchar(20) null,
    pwd       varchar(20) null,
    adminType int         not null
);

INSERT INTO gp1.sysAdmin (adminId, adminName, pwd, adminType) VALUES (1, 'admin', 'admin', 3);
INSERT INTO gp1.sysAdmin (adminId, adminName, pwd, adminType) VALUES (2, 'guest', 'guest', 2);
INSERT INTO gp1.sysAdmin (adminId, adminName, pwd, adminType) VALUES (3, 'user', 'user', 1);
INSERT INTO gp1.sysAdmin (adminId, adminName, pwd, adminType) VALUES (4, 'head', 'head', 2);
INSERT INTO gp1.sysAdmin (adminId, adminName, pwd, adminType) VALUES (5, 'boss', 'boss', 3);