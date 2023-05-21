create table customerInfo
(
    custId   int auto_increment
        primary key,
    custName varchar(100) not null,
    pwd      varchar(20)  not null,
    email    varchar(20)  not null
);

INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (1, '小红', '123456', 'xiaohong@qq.com');
INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (2, '小橙', '123456', 'xiaocheng@163.com');
INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (3, '小黄', '123456', 'xiaohuang@yahu.com');
INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (4, '小绿', '123456', 'xiaolv@qq.com');
INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (5, '小蓝', '123456', 'xiaolan@qq.com');
INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (6, '梅梅', '66666', 'meimei@qq.com');
INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (7, 'abc', '123456', 'meimei@qq.com');
INSERT INTO gp1.customerInfo (custId, custName, pwd, email) VALUES (8, 'abcd', '1234', '3539766051@qq.com');