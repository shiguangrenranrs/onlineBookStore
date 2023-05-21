create table bookInfo
(
    bookId     int auto_increment
        primary key,
    bookName   varchar(20)  not null,
    booktypeId int          not null,
    author     varchar(20)  not null,
    pbName     varchar(20)  not null,
    context    varchar(200) not null,
    smallImg   varchar(20)  not null,
    bigImg     varchar(20)  not null,
    price      decimal      not null,
    pbdate     date         not null,
    hyprice    decimal      not null,
    bookStates int          not null,
    sjdate     date         null,
    num        int          not null,
    saleCount  int          not null
);

INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (1, '白鹿原', 3, '陈忠实', '北京出版社出版集团', '白嘉轩后来引以为豪壮的是一生里娶过七房女人', 'bailuyuan.jpg', 'bailuyuan.jpg', 36, '2008-05-01', 24, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (2, '藏海花', 3, '南派三叔', '北京联合出版公司', '吴邪五年的平静生活，因金万堂的突然造访而被打断。', 'zhanghaihua.jpg', 'zhanghaihua.jpg', 32, '2012-08-01', 23, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (3, '活着', 3, '余华', '作家出版社', '《活着》是一篇读起来让人感到沉重的小说', 'huozhe.jpg', 'huozhe.jpg', 15, '2010-11-01', 8, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (4, '狼图腾', 3, '姜戎', '长江文艺出版社 ', '《狼图腾》由几十个有机连贯的“狼故事”一气呵成', 'langtuteng.jpg', 'langtuteng.jpg', 32, '2004-04-01', 21, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (5, '最美的时光', 3, '桐华', '湖南文艺出版社', '全新演绎最唯美浪漫、纠结虐心的都市爱情小说', 'zuimeideshiguang.jpg', 'zuimeideshiguang.jpg', 32, '2012-08-01', 20, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (6, '北京青年（独家定制版', 3, '常琳', '中国华侨出版社', '一个有关成长、改变和寻找自我的故事。', 'beijingqingnian.jpg', 'beijingqingnian.jpg', 48, '2012-08-01', 32, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (7, '穆斯林的葬礼', 3, '霍达', '北京十月文艺出版社', '一个穆斯林家族，六十年间的兴衰，三代人命运的沉浮', 'musilindezangli.jpg', 'musilindezangli.jpg', 36, '2007-08-01', 24, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (8, '无尾狗', 3, '阿丁', '吉林出版集团', '一个城镇居民几十年的活之生存、生之尊严。', 'wuweigou.jpg', 'wuweigou.jpg', 33, '2012-07-01', 22, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (9, '许三观卖血记', 3, '余华 ', ' 作家出版社', '包含了20世纪中国社会的集体悲剧', 'xsguanmaixueji.jpg', 'xsguanmaixueji.jpg', 19, '2012-07-01', 11, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (10, '沧浪之水', 3, '阎真', '人民文学出版社', '这是一部令人惊骇的小说，有一种道破天机的意味。', 'canglangzhishu.jpg', 'canglangzhishu.jpg', 33, '2008-05-01', 23, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (11, '不能承受的生命之轻', 4, '米兰·昆德拉', '上海译文出版社', '　最沉重的负担压迫着我们，让我屈服于它', 'bnchengssmzq.jpg', 'bnchengssmzq.jpg', 29, '2010-08-01', 19, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (12, '自由', 4, '〔美〕乔纳森·弗兰岑', '南海出版公司', '二十一世纪的第一个十年经历的梦想与失败。', 'ziyou.jpg', 'ziyou.jpg', 50, '2008-05-01', 35, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (13, '追风筝的人', 4, '（美）胡赛尼', '上海人民出版社', '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足', 'zhuifzderen.jpg', 'zhuifzderen.jpg', 25, '2006-05-01', 16, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (14, '达·芬奇密码', 4, '（美）布朗', '人民文学出版社', '隐藏在列昂纳多·达·芬奇的艺术作品当中', 'dfqimima.jpg', 'dfqimima.jpg', 29, '2009-05-01', 22, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (15, '云图', 4, '（英）大卫·米切尔', '上海文艺出版社', '入选“新千年最佳小说”入围布克奖、星云奖、克拉克奖决选', 'yunhai.jpg', 'yunhai.jpg', 33, '2010-01-01', 24, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (16, '重温最美古诗词', 5, '于丹', '北京联合出版公司', '和于丹一起，重温最美古诗词，回归自在大人生。', 'cwzuimeigsc.jpg', 'cwzuimeigsc.jpg', 38, '2012-06-01', 30, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (17, '唐诗鉴赏辞典', 5, '萧涤非，等', '上海辞书出版社', '以《唐诗鉴赏辞典》为代表的文学鉴赏辞典系列', 'tsjsbaodian.jpg', 'tsjsbaodian.jpg', 58, '1983-12-01', 38, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (18, '唐宋词鉴赏辞典', 5, '周汝昌', '上海辞书出版社', '上海辞书出版社中国文学鉴赏辞典系列中重要品种', 'tscjschidian.jpg', 'tscjschidian.jps', 36, '2011-03-01', 24, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (19, '蒋勋说宋词', 5, '蒋勋', ' 福建人民出版社', ' 蒋勋说：在宋词中，你会觉得有一种饱满与安静', 'jiangxunssc.jpg', 'jiangxunssc.jpg', 36, '2011-01-01', 26, 1, null, 100, 0);
INSERT INTO gp1.bookInfo (bookId, bookName, booktypeId, author, pbName, context, smallImg, bigImg, price, pbdate, hyprice, bookStates, sjdate, num, saleCount) VALUES (20, '席慕蓉诗集', 5, '席慕蓉', ' 作家出版社', '《席慕蓉诗集（套装共6册）》包括有《七里香》、《无怨的青春》', 'murongsj.jpg', 'murongsj.jpg', 108, '2008-05-01', 69, 1, null, 100, 0);