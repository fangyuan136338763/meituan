SET NAMES UTF8;
DROP DATABASE IF EXISTS meituan;
CREATE DATABASE meituan CHARSET=UTF8;
USE meituan;
CREATE TABLE user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uphone VARCHAR(64),
    upwd VARCHAR(64)
);

CREATE TABLE user_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    ptitle VARCHAR(32),
    pcounts INT
);

CREATE TABLE family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(32),
    img VARCHAR(256)
);
INSERT INTO family VALUES(10,'美食','img/home/grid/grid_1.png');
INSERT INTO family VALUES(20,'美团超市','img/home/grid/grid_2.png');
INSERT INTO family VALUES(30,'生鲜果蔬','img/home/grid/grid_3.png');
INSERT INTO family VALUES(40,'美团专送','img/home/grid/grid_4.png');
INSERT INTO family VALUES(50,'晚餐优选','img/home/grid/grid_5.png');
INSERT INTO family VALUES(60,'甜点饮品','img/home/grid/grid_6.png');
INSERT INTO family VALUES(70,'小吃馆','img/home/grid/grid_7.png');
INSERT INTO family VALUES(80,'家常菜','img/home/grid/grid_8.png');

CREATE TABLE shop(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(256),
    title VARCHAR(64),
    sales INT,
    distance FLOAT,
    p_time INT,
    p_price INT,
    s_price DECIMAL(9,2),
    isMtSend boolean,
    comment FLOAT,
    fid INT
);

INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/cd70f381bb94c515b0fab7580cca310846686.jpg.webp','凤爪王烧烤龙虾总店',999,1.7,40,20,6.5,true,4.5,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/0.84.63/xianfu/aa86bc1b9a218ea5e094b861c03b59b94873.jpg.webp','湖北麦当劳解放路餐厅',979,2.1,30,0,9,false,4.6,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/5eb3516df167bbf9f20c69a55a708241173531.jpg.webp','猫蒲夜宵（菱角湖店）',999,4.3,39,0,8,false,4.7,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/d253e010c7830f7e33e8929ea651c434236749.jpg.webp','淘气牛杂馆',989,1.6,30,20,6,true,4.5,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/c1350465b58699c6e3bc936b5e533d4854917.jpg.webp','处女座的烧烤店',999,1.2,37,0,4.5,false,4.4,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/6410ab3b6237352be0ba7812557f241f257510.jpg.webp','光头卤（南京路店）',999,2.2,34,38,7,false,4.6,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/1a0e96d287a516351293c44b355361e541923.jpg.webp','新疆风味阿木提烧烤炒菜',34,2.7,39,20,6.5,true,1.0,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/d2006ebe4d40991b0a50f4bf3c94f05a284587.jpg.webp','刘半夜',529,0.6,30,20,6.5,true,4.0,10);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/22c0a307f0c4f4b0af3c34e7afbd000987785.jpg.webp','虾蟹宝宝',258,0.5,30,0,4.5,false,4.2,10);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/489731c04a62dbc7561e14ef35cf232b55605.jpg.webp','蔡锷酒家私房菜',479,0.4,30,20,7,true,4.1,10);


INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/9adbf0acd109daeb23f55afbf2006d7310569.jpg.webp','全时便利店（安静小区店）',799,2.2,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/dfd7292def76eadb854bb0c19a4d1ac79681.jpg.webp','Today（南京路店）',256,2.2,30,30,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/963eac740b718c00842179d11c2902e137173.jpg.webp','可多（中城国际店）',799,2.2,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/business/7aef2827c48aca43fcd40d3cd71e318e102104.jpg.webp','加国超市',999,0.8,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/ab670478cd6b9a9ee9527b2aebb070a127810.jpg.webp','天富便利店（万科金色家园店）',799,3.2,30,20,7,false,4.9,20);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/447e3c06fac87f97ab5143bd04a1dcee62735.jpg.webp','可多超市（极速街店）',333,1.5,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/1a6f7c9384d9154cdeeb9b6a6dd1411120906.jpg.webp','慕臣便利店（江汉路店）',555,2.2,30,20,7,false,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/de64196b984f70b2a87f492849f396de71087.jpg.webp','Today（武汉剧院店）',799,2.2,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/821ea28c3f7d8b4332ce52e1def5788710075.jpg.webp','美宜佳（万科金色家园店）',532,1.1,30,20,7,true,4.9,20);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/3aa5ea3192c41d5253b337ecafbb2fad7631.jpg.webp','爱马红酒直达.',799,2.5,30,20,7,true,4.9,20);


INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/a82a92be629d5866602d3917ed0ce77532768.jpeg.webp','长合生鲜配送.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/e965832f019868f8cc178b23ea80bbcf34025.jpg.webp','果然鲜（循礼门店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/84bfd79b23e5043c2a63921d28b77c6e216911.jpg.webp','好新鲜水果店（循礼门店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/30698373c2628d7840d5301b379dba14349035.jpg.webp','农夫果蔬（有机绿色菜）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/a2e751733ec79e3ff3ec1f23aa277a3d37307.jpg.webp','果缘（北湖店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/a2237139faee6ef2b7ad19522ef767fa43283.jpg.webp','优鲜VC（宝丰店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/business/99c762a80df125613154d345e5fbf5ac245119.jpg.webp','果果联盟（宝丰街店）.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/2dfc9bd62bec8f1445fdceab206a7e2c22528.jpg.webp','四溢果园水果店.',64,1.3,69,20,2,false,4.9,30);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/0445ea8aec0fcc8d4eb4244296d9ba86105080.jpg.webp','金色田园生鲜配送（崇仁店）.',64,1.3,69,20,2,false,4.9,30);

INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/3075c2d050c8e3fba06bafc48c96bc7465791.jpg.webp','刘胖子家常菜（中南店）',999,2.3,41,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/c409516744348719260d8c92e393bb96236910.jpg.webp','谢先生餐厅（沙湖店）',999,0.3,44,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/54b08e7136ba7a064beb0280b9f8b38b24884.jpg.webp','简朴寨（紫沙店）',999,2.3,41,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/87faaf76ce4b409fa6818b27de252807249088.jpg.webp','双湖园（解放路店）',999,2.3,41,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/89269c916a542389a7939e1bfc8f2c4e277497.jpg.webp','蔡明纬（积玉桥店）',999,2.3,41,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/wmproduct/ca110b57dd31d70dee7415a30350316786113.jpg.webp','程鲜记豆皮店',159,2.3,41,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/2bf205e4d32de8458417a52121022bda157718.jpg.webp','蔡林记（积玉桥店）',999,2.0,41,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/f82abec189900411628ef0e8a46f3818245597.jpg.webp','良品粥铺（民主路店）',999,2.3,41,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/9aaec3ca9e402800a35f241b7572844b179296.jpg.webp','覃肥叔桂林米粉(粮道街总店)',747,1.2,30,20,3.5,true,4.7,40);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/424c3d29be04733f612f3f8108e6b40036761.jpg.webp','五芳斋（武汉解放路店）',999,2.3,41,20,3.5,true,4.7,40);


INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/ce46cec43bfe398a692d9e08d919511b129167.jpg.webp','四季粥铺（小东门店）',999,1.5,34,15,2.5,false,4.6,50);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/096911cafd3a3df67d62894218c183e1119255.jpg.webp','粥员外（汉街店）',999,1.5,34,15,2.5,true,4.6,50);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/e8d29dfe4f63985ab503d2033f3d4344312182.jpg.webp','天津小笼包（棋盘街店）',999,1.5,34,15,2.5,false,4.6,50);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/0ee953258ad08ccb0dae356d52f974b0186972.jpg.webp','粥大师·熬足8小时(汉街店)',999,1.5,34,15,2.5,true,4.6,50);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/5d1032a6252d525f26815a3261f172ad202522.jpg.webp','天天红油赵师傅热干面',999,1.5,34,15,2.5,true,4.6,50);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/70f8c4208dd54ec64147e5a49e1eaf76120712.jpg.webp','来一份粥（中南路店）',999,1.5,34,15,2.5,false,4.6,50);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/de4f412acd7e2607494c1c8da6202901230922.png.webp','四美包子（积玉桥店）',999,1.5,34,15,2.5,true,4.6,50);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/db9aeaa6099d9bf3d64d2026e7f40c1212951.jpg.webp','1号粥店（阅马场店）',999,1.5,34,15,2.5,false,4.6,50);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/83e5df97ae3d6768c4e78a60567ff0ab21016.jpg.webp','三米粥铺（中南路店）',999,1.5,34,15,2.5,true,4.6,50);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/03ace5d7253bbed48eef1176d94b1309190373.jpg.webp','云南过桥米线（粮道街店）',999,1.5,34,15,2.5,false,4.6,50);


INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/64cc287151ab081a5749358005a8680b21921.jpg.webp','1點點（中南朗汇店）',262,3.0,57,0,8,true,4.8,60);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/d492cd26b7aa59e5cda96599d1d59906178744.jpg.webp','家燕鲜炖燕窝',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/439223b73f919e00c6fc9e3b10ae8875260029.jpg.webp','慕客经典慕斯蛋糕（武汉店）',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/62f5b6d042ffa41f47282be10ebee7ec8600.jpg.webp','7港9',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/c5a428539fd0f7b0bd48cf6b34abf6b3612520.jpg.webp','东囍烘焙（中南店）',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/277fee2fa715e0bee6024f6e39798c23299008.jpg.webp','冰之味冰淇淋蛋糕',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/business/23e7241086008da6c5018fc28feb6817304054.png.webp','一口鲜燕',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/edc4058f1cd3ec6f5b943135e50c2a05243724.jpg.webp','一诺蛋糕',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/business/9be8ebba75d0cdf87c3c1babf0d55e51128036.jpg.webp','凯蒂斯蛋糕',262,3.0,57,0,8,false,4.8,60);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/98bbb04cda3b30aba87ee619ae0cbeea72645.jpg.webp','星巴克咖啡代购（首义商圈1店）',262,3.0,57,0,8,false,4.8,60);


INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/14044724fc7ba049b6c41b46b30a23bb228291.png.webp','老地方牛肉面馆（中南店）',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/865da6fea03ff52d02bdc46fd2978eac45780.jpg.webp','虾与稻(司门口店)',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/4f8634bfdf0b77a37f41f22ec7b608c839536.jpg.webp','丸龟制面-乌冬面专门店（武汉昙华林店）',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/71cb6c9f5cf2faafbd09fc98f7a0ffc6356368.jpg.webp','正宗桂林米粉',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/8771c6aa21a337dfd044f689c5433b1a503724.jpg.webp','禾记上海生煎汤包（解放路店）',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/7bbe64ca306ddb315eb756eb04b4f1cd137620.jpg.webp','煎百味（昙华林店）',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/d639f20dab0ff11ee5e63f5ce557f70a255290.jpg.webp','光头卤（湖北大学店）',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/2c329a357a2893f721b99ea95a84f67d117298.jpg.webp','隐烫（汉街店）',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/d9d8ea24f737ccb94d5d92ad6f4407be98554.png.webp','张亮麻辣烫(首义路店)',999,1.3,34,15,2.5,false,4.8,70);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/03ace5d7253bbed48eef1176d94b1309190373.jpg.webp','云南过桥米线（粮道街店）',999,1.3,34,15,2.5,false,4.8,70);


INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/3075c2d050c8e3fba06bafc48c96bc7465791.jpg.webp','刘胖子家常菜（中南店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/c409516744348719260d8c92e393bb96236910.jpg.webp','谢先生餐厅（沙湖店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/54b08e7136ba7a064beb0280b9f8b38b24884.jpg.webp','简朴寨（紫沙店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/87faaf76ce4b409fa6818b27de252807249088.jpg.webp','双湖园（解放路店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/89269c916a542389a7939e1bfc8f2c4e277497.jpg.webp','蔡明纬（积玉桥店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p1.meituan.net/waimaipoi/4a1c29be13dc874aa7010454f9a5814e158112.jpg.webp','卤汁拌饭（司门口店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/f794f271587577f9a0a113b95857e86125212.jpg.webp','西贝莜面村（凯德1818店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/b3219d5243314aa2b12cad02972f012f147456.jpg.webp','烤鸭大师新北京烤鸭',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/waimaipoi/f8314d94da0dfd18e1a55b810afc6202101786.jpg.webp','愚翁塘（小四川精品店）',999,2.3,41,20,3.5,true,4.8,80);
INSERT INTO shop VALUES(null,'http://p0.meituan.net/business/03ace5d7253bbed48eef1176d94b1309190373.jpg.webp','云南过桥米线（粮道街店）',999,2.3,41,20,3.5,true,4.8,80);

-- sid为商店id
CREATE TABLE shop_menu(
    id INT PRIMARY KEY AUTO_INCREMENT,
    mid INT,
    title VARCHAR(64),
    sid INT
);
INSERT INTO shop_menu VALUES(null,1,'热销',50);
INSERT INTO shop_menu VALUES(null,2,'找醇茶',50);
INSERT INTO shop_menu VALUES(null,3,'找好茶',50);
INSERT INTO shop_menu VALUES(null,4,'找奶茶',50);
INSERT INTO shop_menu VALUES(null,5,'找口感',50);
INSERT INTO shop_menu VALUES(null,6,'找鲜奶',50);
INSERT INTO shop_menu VALUES(null,7,'找新鲜',50);


CREATE TABLE product(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(256),
    ptitle VARCHAR(128),
    details VARCHAR(256),
    zan INT,
    price DECIMAL(9,2),
    mid INT,
    sid INT
);

INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6e3415468ea6f74c616b891efd1c302117013.jpg","(大杯)波霸奶茶","奶茶搭配波霸，口感软Q。主要原料：红茶；辅料：波霸、植脂末。",8,13,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6e3415468ea6f74c616b891efd1c302117013.jpg","(中杯)波霸奶茶","奶茶搭配波霸，口感软Q。主要原料：红茶；辅料：波霸、植脂末。",8,10,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/549efe5ae2f53107154a81d703c5b4cd12606.jpg","(中杯)四季奶青","四季春茶搭配特选植脂末，经由黄金比例调制而成，香滑顺口。主要原料：四季春茶；辅料：植脂末。",8,13,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(中杯)奶茶","阿萨姆红茶搭配特选植脂末，经由黄金比例调制而成，香浓顺口，甄选多种配料，口感更佳。主要原料：红茶；辅料：植脂末。",2,10,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/549efe5ae2f53107154a81d703c5b4cd12606.jpg","(中杯)奶绿","茉莉绿茶搭配特选植脂末，经由黄金比例调制而成；清香顺口，带有淡淡茉莉花香，回味无穷。主要原料：茉莉绿茶；辅料：植脂末。",8,10,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(大杯)乌龙奶茶","浓郁乌龙茶搭配特选植脂末精心调制而成，入口滑顺回甘。主要原料：乌龙茶；辅料：植脂末。",8,13,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/d14789473e71356c43bda54cf2c8674216127.jpg","(大杯)冰淇淋红茶","阿萨姆红茶搭配香草冰淇淋，口感滑润，清爽恬淡。主要原料：红茶；辅料：冰淇淋。",8,13,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(大杯)奶茶","阿萨姆红茶搭配特选植脂末，经由黄金比例调制而成，香浓顺口，甄选多种配料，口感更佳。主要原料：红茶；辅料：植脂末。",8,13,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/549efe5ae2f53107154a81d703c5b4cd12606.jpg","(大杯)奶绿","茉莉绿茶搭配特选植脂末，经由黄金比例调制而成；清香顺口，带有淡淡茉莉花香，回味无穷。主要原料：茉莉绿茶；辅料：植脂末。",8,13,1,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6e3415468ea6f74c616b891efd1c302117013.jpg","(大杯)波霸奶茶","奶茶搭配波霸，口感软Q。主要原料：红茶；辅料：波霸、植脂末。",8,13,1,50);


INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5fa21eec7d2e013632b7bcd58b1120fa17104.jpg","阿萨姆红茶","找醇茶系列饮品无法添加配料，需加配料请于「找好茶」订购! 味甘温和略有果香。主要原料：红茶。",8,7,2,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","茉莉绿茶","找醇茶系列饮品无法添加配料，需加配料请于「找好茶」订购! 绿茶加上含苞待放的茉莉花蕾熏闷而成。主要原料：茉莉绿茶。",8,7,2,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","四季春茶","找醇茶系列饮品无法添加配料，需加配料请于「找好茶」订购! 茶汤翠绿淡黄，茶韵柔顺。主要原料：四季春茶。",8,7,2,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1e4fc0865f9dd20bccbad31e252effb718131.jpg","冻顶乌龙茶","找醇茶系列饮品无法添加配料，需加配料请于「找好茶」订购! 味醇甘润，喉韵回甘十足。主要原料：乌龙茶。",8,7,2,50);


INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5fa21eec7d2e013632b7bcd58b1120fa17104.jpg","(中杯)阿萨姆红茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：红茶。",8,7,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5fa21eec7d2e013632b7bcd58b1120fa17104.jpg","(大杯)阿萨姆红茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：红茶。",8,9,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(中杯)茉莉绿茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：茉莉绿茶。",8,7,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(大杯)茉莉绿茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：茉莉绿茶。",8,9,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(中杯)四季春茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：四季春茶。",8,7,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(大杯)四季春茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：四季春茶。",8,9,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1e4fc0865f9dd20bccbad31e252effb718131.jpg","(中杯)冻顶乌龙茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：乌龙茶。",8,7,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1e4fc0865f9dd20bccbad31e252effb718131.jpg","(大杯)冻顶乌龙茶","不加配料，请于「找醇茶」订购，「找好茶」饮品默认为加免费配料售价。主要原料：乌龙茶。",8,7,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/c42d82e896943065ec923ee7063fcb1516183.jpg","(中杯)翡翠柠檬","青柠檬酸甜香味调配茉莉绿茶，清新爽口。主要原料：茉莉绿茶；辅料：青柠檬汁。",8,12,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/c42d82e896943065ec923ee7063fcb1516183.jpg","(大杯)翡翠柠檬","青柠檬酸甜香味调配茉莉绿茶，清新爽口。主要原料：茉莉绿茶；辅料：青柠檬汁。",8,15,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(中杯)蜂蜜绿","茉莉绿茶与蜂蜜完美搭配，喝在口，甜在心。主要原料：茉莉绿茶；辅料：蜂蜜。",8,12,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(大杯)蜂蜜绿","茉莉绿茶与蜂蜜完美搭配，喝在口，甜在心。主要原料：茉莉绿茶；辅料：蜂蜜。",8,15,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/aff847e8042d0c84920ea79df72c222816886.jpg","(中杯)葡萄柚绿","葡萄柚绿为夏季「季节限定」饮品，冬季不销售。富含丰富维他命C的葡萄柚汁搭配茉莉绿茶。主要原料：茉莉绿茶；辅料：葡萄柚汁。",8,12,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/aff847e8042d0c84920ea79df72c222816886.jpg","(大杯)葡萄柚绿","葡萄柚绿为夏季「季节限定」饮品，冬季不销售。富含丰富维他命C的葡萄柚汁搭配茉莉绿茶。主要原料：茉莉绿茶；辅料：葡萄柚汁。",8,15,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1f7689b2f2efb0c1f86927e45aae077516091.jpg","(中杯)养乐多绿","养乐多绿限制作冷饮，以保存养乐多活性乳酸菌。 养乐多绿久放后，绿茶与养乐多分层属正常现象，饮用前请摇一摇。主要原料：茉莉绿茶；辅料：养乐多。",8,13,3,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1f7689b2f2efb0c1f86927e45aae077516091.jpg","(大杯)养乐多绿","养乐多绿限制作冷饮，以保存养乐多活性乳酸菌。 养乐多绿久放后，绿茶与养乐多分层属正常现象，饮用前请摇一摇。主要原料：茉莉绿茶；辅料：养乐多。",8,17,3,50);


INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(中杯)奶茶","阿萨姆红茶搭配特选植脂末，经由黄金比例调制而成，香浓顺口，甄选多种配料，口感更佳。主要原料：红茶；辅料：植脂末。",8,10,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(大杯)奶茶","阿萨姆红茶搭配特选植脂末，经由黄金比例调制而成，香浓顺口，甄选多种配料，口感更佳。主要原料：红茶；辅料：植脂末。",8,13,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/549efe5ae2f53107154a81d703c5b4cd12606.jpg","(中杯)奶绿","茉莉绿茶搭配特选植脂末，经由黄金比例调制而成；清香顺口，带有淡淡茉莉花香，回味无穷。主要原料：茉莉绿茶；辅料：植脂末。",8,10,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/549efe5ae2f53107154a81d703c5b4cd12606.jpg","(大杯)奶绿","茉莉绿茶搭配特选植脂末，经由黄金比例调制而成；清香顺口，带有淡淡茉莉花香，回味无穷。主要原料：茉莉绿茶；辅料：植脂末。",8,13,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/549efe5ae2f53107154a81d703c5b4cd12606.jpg","(中杯)四季奶青","四季春茶搭配特选植脂末，经由黄金比例调制而成，香滑顺口。主要原料：四季春茶；辅料：植脂末。",8,10,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/549efe5ae2f53107154a81d703c5b4cd12606.jpg","(大杯)四季奶青","四季春茶搭配特选植脂末，经由黄金比例调制而成，香滑顺口。主要原料：四季春茶；辅料：植脂末。",8,13,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(中杯)乌龙奶茶","浓郁乌龙茶搭配特选植脂末精心调制而成，入口滑顺回甘。主要原料：乌龙茶；辅料：植脂末。",8,10,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(大杯)乌龙奶茶","浓郁乌龙茶搭配特选植脂末精心调制而成，入口滑顺回甘。主要原料：乌龙茶；辅料：植脂末。",8,13,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(中杯)焦糖奶茶","香纯奶茶加入焦糖糖浆，香而顺口。主要原料：红茶；辅料：焦糖、植脂末。",8,11,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/51f018dae4d704a1e8c72eeb28bdfb1013641.jpg","(大杯)焦糖奶茶","香纯奶茶加入焦糖糖浆，香而顺口。主要原料：红茶；辅料：焦糖、植脂末。",8,14,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/ccf5bee5e4807621c70f55b806e8260916061.jpg","(中杯)抹茶奶茶","抹茶奶茶饮品为「抹茶+植脂末」调配，抹茶奶茶饮品没有渐层效果哦!  抹茶饮品久放后，抹茶易沉淀属正常现象，饮用前请摇一摇。  抹茶饮品，制做为温饮会有稍带苦味的口感，属正常现象，建议五分甜以上饮用。主要原料：抹茶；辅料：植脂末。",8,13,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/ccf5bee5e4807621c70f55b806e8260916061.jpg","(大杯)抹茶奶茶","抹茶奶茶饮品为「抹茶+植脂末」调配，抹茶奶茶饮品没有渐层效果哦!  抹茶饮品久放后，抹茶易沉淀属正常现象，饮用前请摇一摇。  抹茶饮品，制做为温饮会有稍带苦味的口感，属正常现象，建议五分甜以上饮用。主要原料：抹茶；辅料：植脂末。",8,17,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/786b26d633288333c9312bcc529a07ef14808.jpg","(中杯)红茶玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：红茶；辅料：淡奶油。",8,12,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/786b26d633288333c9312bcc529a07ef14808.jpg","(大杯)红茶玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：红茶；辅料：淡奶油。",8,15,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/3291698b9edbdf1e1727b7d41ee44b2616759.jpg","(中杯)绿茶玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：茉莉绿茶；辅料：淡奶油。",8,12,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/3291698b9edbdf1e1727b7d41ee44b2616759.jpg","(大杯)绿茶玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：茉莉绿茶；辅料：淡奶油。",8,15,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/3291698b9edbdf1e1727b7d41ee44b2616759.jpg","(中杯)四季玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：四季春茶；辅料：淡奶油。",8,12,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/3291698b9edbdf1e1727b7d41ee44b2616759.jpg","(大杯)四季玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：四季春茶；辅料：淡奶油。",8,15,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/786b26d633288333c9312bcc529a07ef14808.jpg","(中杯)乌龙玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：乌龙茶；辅料：淡奶油。",8,12,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/786b26d633288333c9312bcc529a07ef14808.jpg","(大杯)乌龙玛奇朵","【玛奇朵饮品外卖，视同接受融化状态】 因配送过程饮品会产生摇晃，奶霜容易沉淀或融化，皆属正常现象!  奶霜与茶汤融化后会呈现「奶茶色」，且因奶霜密度较高，融于茶汤后饮品会出现未满杯空间，以上原因并非忘记加奶霜，盼请理解与包容!主要原料：乌龙茶；辅料：淡奶油。",8,15,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/9c4fb26e6a4d0553487dea188afc129a15167.jpg","(中杯)阿华田","经由黄金比例调制的阿华田。主要原料：阿华田；辅料：植脂末。",8,13,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/9c4fb26e6a4d0553487dea188afc129a15167.jpg","(大杯)阿华田","经由黄金比例调制的阿华田。主要原料：阿华田；辅料：植脂末。",8,17,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/9c4fb26e6a4d0553487dea188afc129a15167.jpg","(中杯)可可芭蕾","进口自法国的巧克力粉，经由比例调配，更加香浓顺滑。主要原料：巧克力粉。",8,14,4,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/9c4fb26e6a4d0553487dea188afc129a15167.jpg","(大杯)可可芭蕾","进口自法国的巧克力粉，经由比例调配，更加香浓顺滑。主要原料：巧克力粉。",8,18,4,50);


INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6e3415468ea6f74c616b891efd1c302117013.jpg","(中杯)波霸奶茶","奶茶搭配波霸，口感软Q。主要原料：红茶；辅料：波霸、植脂末。",8,10,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6e3415468ea6f74c616b891efd1c302117013.jpg","(大杯)波霸奶茶","奶茶搭配波霸，口感软Q。主要原料：红茶；辅料：波霸、植脂末。",8,13,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6e3415468ea6f74c616b891efd1c302117013.jpg","(中杯)波霸奶绿","奶绿搭配波霸，清爽可口有嚼劲。主要原料：茉莉绿茶；辅料：波霸、植脂末。",8,10,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6e3415468ea6f74c616b891efd1c302117013.jpg","(大杯)波霸奶绿","奶绿搭配波霸，清爽可口有嚼劲。主要原料：茉莉绿茶；辅料：波霸、植脂末。",8,13,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5fa21eec7d2e013632b7bcd58b1120fa17104.jpg","(中杯)波霸红","阿萨姆红茶搭配波霸，回味甘甜清爽。主要原料：红茶；辅料：波霸。",8,7,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5fa21eec7d2e013632b7bcd58b1120fa17104.jpg","(大杯)波霸红","阿萨姆红茶搭配波霸，回味甘甜清爽。主要原料：红茶；辅料：波霸。",8,9,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(中杯)波霸绿","茉莉绿茶搭配波霸，回味甘甜，香气怡人。主要原料：茉莉绿茶；辅料：波霸。",8,7,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/77154c7fbd0d7b1e3a1bc21f587e1db515420.jpg","(大杯)波霸绿","茉莉绿茶搭配波霸，回味甘甜，香气怡人。主要原料：茉莉绿茶；辅料：波霸。",8,9,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/48b9143192686d8e56a7e1b3eb46674e17624.jpg","(中杯)珍珠奶茶","奶茶搭配珍珠，口感滑溜顺畅。主要原料：红茶；辅料：珍珠、植脂末。",8,10,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/48b9143192686d8e56a7e1b3eb46674e17624.jpg","(大杯)珍珠奶茶","奶茶搭配珍珠，口感滑溜顺畅。主要原料：红茶；辅料：珍珠、植脂末。",8,13,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/48b9143192686d8e56a7e1b3eb46674e17624.jpg","(中杯)珍珠奶绿","奶绿搭配珍珠，回味甘甜，香气怡人。主要原料：茉莉绿茶；辅料：珍珠、植脂末。",8,10,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/48b9143192686d8e56a7e1b3eb46674e17624.jpg","(大杯)珍珠奶绿","奶绿搭配珍珠，回味甘甜，香气怡人。主要原料：茉莉绿茶；辅料：珍珠、植脂末。",8,13,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5fa21eec7d2e013632b7bcd58b1120fa17104.jpg","(中杯)珍珠红","阿萨姆红茶搭配珍珠，回味甘甜清爽。主要原料：红茶；辅料：珍珠。",7,10,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5fa21eec7d2e013632b7bcd58b1120fa17104.jpg","(大杯)珍珠红","阿萨姆红茶搭配珍珠，回味甘甜清爽。主要原料：红茶；辅料：珍珠。",9,10,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/97cea8865ce88ef2ea8526e3c555070917928.jpg","(中杯)百香三重奏","百香三重奏：百香绿+珍波椰组成，口感清爽Q弹。主要原料：茉莉绿茶；辅料：百香汁、珍珠、波霸、椰果。",9,12,5,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/97cea8865ce88ef2ea8526e3c555070917928.jpg","(大杯)百香三重奏","百香三重奏：百香绿+珍波椰组成，口感清爽Q弹。主要原料：茉莉绿茶；辅料：百香汁、珍珠、波霸、椰果。",9,15,5,50);


INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6aa82b1bf34e804df96d9a3c1127a44814685.jpg","(中杯)红茶拿铁","百香三重奏：百香绿+拿铁系列饮品，外卖服务「一律不做渐层效果」! 锡兰红茶搭配鲜牛奶，柔和顺滑。主要原料：锡兰红茶；辅料：鲜牛奶。",9,13,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6aa82b1bf34e804df96d9a3c1127a44814685.jpg","(大杯)红茶拿铁","百香三重奏：百香绿+拿铁系列饮品，外卖服务「一律不做渐层效果」! 锡兰红茶搭配鲜牛奶，柔和顺滑。主要原料：锡兰红茶；辅料：鲜牛奶。",9,17,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1cf10c740794130e798819bd4d944eee15282.jpg","(中杯)绿茶拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 茉莉绿茶搭配鲜牛奶，柔和顺滑。主要原料：茉莉绿茶；辅料：鲜牛奶。",9,13,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1cf10c740794130e798819bd4d944eee15282.jpg","(大杯)绿茶拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 茉莉绿茶搭配鲜牛奶，柔和顺滑。主要原料：茉莉绿茶；辅料：鲜牛奶。",9,17,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1cf10c740794130e798819bd4d944eee15282.jpg","(中杯)乌龙拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 冻顶乌龙茶搭配鲜牛奶，柔和顺滑。主要原料：乌龙茶；辅料：鲜牛奶。",9,13,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1cf10c740794130e798819bd4d944eee15282.jpg","(大杯)乌龙拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 冻顶乌龙茶搭配鲜牛奶，柔和顺滑。主要原料：乌龙茶；辅料：鲜牛奶。",9,17,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1cf10c740794130e798819bd4d944eee15282.jpg","(中杯)四季拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 四季春茶搭配鲜牛奶，柔和顺滑。主要原料：四季春茶；辅料：鲜牛奶。",9,13,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/1cf10c740794130e798819bd4d944eee15282.jpg","(大杯)四季拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 四季春茶搭配鲜牛奶，柔和顺滑。主要原料：四季春茶；辅料：鲜牛奶。",9,17,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6aa82b1bf34e804df96d9a3c1127a44814685.jpg","(中杯)焦糖红茶拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 红茶拿铁加上特调例焦糖，风味独具。主要原料：红茶；辅料：焦糖、鲜牛奶。",9,14,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/6aa82b1bf34e804df96d9a3c1127a44814685.jpg","(大杯)焦糖红茶拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 红茶拿铁加上特调例焦糖，风味独具。主要原料：红茶；辅料：焦糖、鲜牛奶。",9,18,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/200015b55a4051c67f5163da8de993f215206.jpg","(中杯)阿华田拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 阿华田搭配鲜牛奶，香甜可口。主要原料：阿华田；辅料：鲜牛奶。",9,15,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/200015b55a4051c67f5163da8de993f215206.jpg","(大杯)阿华田拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 阿华田搭配鲜牛奶，香甜可口。主要原料：阿华田；辅料：鲜牛奶。",9,19,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5079e9da0e762968a6a4443f30a92de713688.jpg","(中杯)可可芭蕾拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 巧克力粉搭配鲜牛奶，香浓纯正。主要原料：巧克力粉；辅料：鲜牛奶。",9,16,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/5079e9da0e762968a6a4443f30a92de713688.jpg","(大杯)可可芭蕾拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」! 巧克力粉搭配鲜牛奶，香浓纯正。主要原料：巧克力粉；辅料：鲜牛奶。",9,21,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/64d1cf425918410fb3a12e9ddb0dfe9c16639.jpg","(中杯)抹茶拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」!  抹茶饮品久放后，抹茶易沉淀属正常现象，饮用前请摇一摇。抹茶饮品，制做为温饮会有稍带苦味的口感，属正常现象，建议五分甜以上饮用。主要原料：抹茶；辅料：鲜牛奶。",9,16,6,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/64d1cf425918410fb3a12e9ddb0dfe9c16639.jpg","(大杯)抹茶拿铁","拿铁系列饮品，外卖服务「一律不做渐层效果」!  抹茶饮品久放后，抹茶易沉淀属正常现象，饮用前请摇一摇。抹茶饮品，制做为温饮会有稍带苦味的口感，属正常现象，建议五分甜以上饮用。主要原料：抹茶；辅料：鲜牛奶。",9,21,6,50);

INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/667502a7829b5201d0f9037afafdf30611439.jpg","(中杯)柠檬汁","鲜榨柠檬汁，新鲜纯正。主要原料：柠檬汁。",9,12,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/667502a7829b5201d0f9037afafdf30611439.jpg","(大杯)柠檬汁","鲜榨柠檬汁，新鲜纯正。主要原料：柠檬汁。",9,15,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/581916058cbc0e3c248285d4a31149e512227.jpg","(中杯)金桔柠檬","鲜榨金桔汁加柠檬汁按特定比例调制而成，清新自然。主要原料：金桔汁、柠檬汁。",9,12,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/581916058cbc0e3c248285d4a31149e512227.jpg","(大杯)金桔柠檬","鲜榨金桔汁加柠檬汁按特定比例调制而成，清新自然。主要原料：金桔汁、柠檬汁。",9,15,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/581916058cbc0e3c248285d4a31149e512227.jpg","(中杯)柠檬蜜","鲜榨柠檬汁搭配特定比例的蜂蜜，酸甜可口。主要原料：柠檬汁、蜂蜜。",9,13,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/581916058cbc0e3c248285d4a31149e512227.jpg","(大杯)柠檬蜜","鲜榨柠檬汁搭配特定比例的蜂蜜，酸甜可口。主要原料：柠檬汁、蜂蜜。",9,17,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/bf237d6ffc16518c997bcd73ff478ae314759.jpg","(中杯)柠檬养乐多","柠檬养乐多限制作冷饮，以保存养乐多活性乳酸菌。 柠檬养乐多久放后柠檬与养乐多分层属正常现象，饮用前请摇一摇。主要原料：柠檬汁、养乐多。",9,15,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/bf237d6ffc16518c997bcd73ff478ae314759.jpg","(大杯)柠檬养乐多","柠檬养乐多限制作冷饮，以保存养乐多活性乳酸菌。 柠檬养乐多久放后柠檬与养乐多分层属正常现象，饮用前请摇一摇。主要原料：柠檬汁、养乐多。",9,19,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/9ae1ee2701f1e5a9faa6309a5824552c12395.jpg","(中杯)蜜茶","由蜂蜜与水简单材料调制而成，清爽香甜，不含茶。主要原料：蜂蜜。",9,12,7,50);
INSERT INTO product VALUES(null,"https://img.meituan.net/100.100.90/xianfu/9ae1ee2701f1e5a9faa6309a5824552c12395.jpg","(大杯)蜜茶","由蜂蜜与水简单材料调制而成，清爽香甜，不含茶。主要原料：蜂蜜。",9,15,7,50);
