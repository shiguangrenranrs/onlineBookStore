create table customerDetailInfo
(
    custId     int auto_increment
        primary key,
    tel        varchar(13) not null,
    address    varchar(20) null,
    sex        int         not null,
    age        int         null,
    countMoney decimal     null,
    qq         varchar(20) null
);

INSERT INTO gp1.customerDetailInfo (custId, tel, address, sex, age, countMoney, qq) VALUES (1, '13545698425', '玉祥门', 0, 21, 126, '766528@qq.com');
INSERT INTO gp1.customerDetailInfo (custId, tel, address, sex, age, countMoney, qq) VALUES (2, '15885695429', '明德门', 1, 18, 6, '8885328@qq.com');
INSERT INTO gp1.customerDetailInfo (custId, tel, address, sex, age, countMoney, qq) VALUES (3, '15845698425', '长安路', 1, 22, 1226, '766528@qq.com');
INSERT INTO gp1.customerDetailInfo (custId, tel, address, sex, age, countMoney, qq) VALUES (4, '15999668489', '大雁塔', 0, 23, 26, '766528@qq.com');
INSERT INTO gp1.customerDetailInfo (custId, tel, address, sex, age, countMoney, qq) VALUES (5, '13645655423', '马路', 0, 20, null, '766528@qq.com');