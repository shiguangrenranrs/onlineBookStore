create table news
(
    newsId     int auto_increment
        primary key,
    newTitle   varchar(30) not null,
    context    varchar(50) not null,
    createTime date        not null
);

INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (1, '小米3出世', '小米3今日火爆出师', '2012-02-02');
INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (2, '三星盖乐士出世', '三星盖乐士今日火爆出师', '2014-04-04');
INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (3, '小米4出世', '小米4今日火爆出世', '2013-03-03');
INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (4, '华为66出世', '华为66发布会', '2014-06-06');
INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (5, '诺基亚走了', '诺基亚退出市场', '2011-02-04');
INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (6, '花千骨', '花千骨今日将上映', '2015-04-06');
INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (7, '两生花', '两生花下周即将上映', '2015-04-06');
INSERT INTO gp1.news (newsId, newTitle, context, createTime) VALUES (8, '萝卜青菜', '萝卜青菜都焉了', '2015-04-06');