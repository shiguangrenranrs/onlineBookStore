create table bookType
(
    bookTypeId   int auto_increment
        primary key,
    parentId     int         not null,
    bookTypeName varchar(20) not null,
    context      varchar(40) null,
    isDelete     int         not null
);

INSERT INTO gp1.bookType (bookTypeId, parentId, bookTypeName, context, isDelete) VALUES (1, 0, '小说', '它是通过塑造人物、叙述故事', 1);
INSERT INTO gp1.bookType (bookTypeId, parentId, bookTypeName, context, isDelete) VALUES (2, 0, '文学', '形象化地反映客观现实的艺术', 1);
INSERT INTO gp1.bookType (bookTypeId, parentId, bookTypeName, context, isDelete) VALUES (3, 1, '中国当代小说', '50年代后期文学史著作', 1);
INSERT INTO gp1.bookType (bookTypeId, parentId, bookTypeName, context, isDelete) VALUES (4, 1, '外国小说', '中国文学以外的世界各国文学', 1);
INSERT INTO gp1.bookType (bookTypeId, parentId, bookTypeName, context, isDelete) VALUES (5, 2, '诗歌词曲', '记载了人们的历史活动', 1);
INSERT INTO gp1.bookType (bookTypeId, parentId, bookTypeName, context, isDelete) VALUES (6, 3, '诗歌词曲', '记载了人们的历史活动', 1);