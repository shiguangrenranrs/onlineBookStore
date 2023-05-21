create table favorite
(
    favoriteId int auto_increment
        primary key,
    bookId     int          not null,
    custId     int          not null,
    scdate     date         not null,
    context    varchar(100) null
);

INSERT INTO gp1.favorite (favoriteId, bookId, custId, scdate, context) VALUES (1, 16, 1, '2012-03-01', '想买的书');
INSERT INTO gp1.favorite (favoriteId, bookId, custId, scdate, context) VALUES (2, 10, 3, '2007-02-03', '很喜欢的书');
INSERT INTO gp1.favorite (favoriteId, bookId, custId, scdate, context) VALUES (3, 7, 2, '2012-04-27', '期待的书');
INSERT INTO gp1.favorite (favoriteId, bookId, custId, scdate, context) VALUES (4, 6, 4, '2002-07-01', '小说类的书');
INSERT INTO gp1.favorite (favoriteId, bookId, custId, scdate, context) VALUES (5, 11, 3, '2010-03-01', '文学的书');