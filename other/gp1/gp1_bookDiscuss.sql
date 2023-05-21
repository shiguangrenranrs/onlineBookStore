create table bookDiscuss
(
    disId   int auto_increment
        primary key,
    bookId  int          not null,
    custId  int          not null,
    context varchar(100) not null,
    states  int          not null
);

INSERT INTO gp1.bookDiscuss (disId, bookId, custId, context, states) VALUES (1, 1, 3, '经典就是经典，再温习一遍', 1);
INSERT INTO gp1.bookDiscuss (disId, bookId, custId, context, states) VALUES (2, 12, 1, '垃圾大家不要买啊', 0);
INSERT INTO gp1.bookDiscuss (disId, bookId, custId, context, states) VALUES (3, 7, 3, '好评，书中经典，推荐观看', 1);
INSERT INTO gp1.bookDiscuss (disId, bookId, custId, context, states) VALUES (4, 16, 2, '第二次买了，给朋友带一本', 1);
INSERT INTO gp1.bookDiscuss (disId, bookId, custId, context, states) VALUES (5, 17, 5, '很好看，很喜欢', 1);