create table orderMain
(
    orderNum     varchar(20)  not null
        primary key,
    customerId   int          not null,
    customerName varchar(20)  null,
    tel          varchar(20)  not null,
    address      varchar(100) not null,
    xsstatus     varchar(1)   null,
    adminId      int          null,
    context      varchar(100) null,
    sumprice     decimal      not null
);

