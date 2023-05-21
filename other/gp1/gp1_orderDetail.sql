create table orderDetail
(
    detail   int         not null
        primary key,
    orderNum varchar(20) not null,
    bookId   int         not null,
    num      int         not null
);

